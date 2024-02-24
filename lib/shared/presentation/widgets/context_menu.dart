import 'package:flutter/material.dart';

class ContextMenu extends StatefulWidget {
  const ContextMenu(
      {super.key,
      required this.child,
      required this.actions,
      this.onStateChanged});

  final Widget child;
  final List<PopupMenuEntry> actions;
  final ValueChanged<bool>? onStateChanged;

  @override
  State<ContextMenu> createState() => _ContextMenuState();
}

class _ContextMenuState extends State<ContextMenu> {
  bool contextMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: showContextMenu,
      child: widget.child,
    );
  }

  void showContextMenu() async {
    if (contextMenuOpen) return;

    contextMenuOpen = true;
    if (widget.onStateChanged != null) widget.onStateChanged!(contextMenuOpen);

    final PopupMenuThemeData popupMenuTheme = PopupMenuTheme.of(context);
    final RenderBox button = context.findRenderObject()! as RenderBox;
    final RenderBox overlay =
        Navigator.of(context).overlay!.context.findRenderObject()! as RenderBox;
    final PopupMenuPosition popupMenuPosition =
        popupMenuTheme.position ?? PopupMenuPosition.over;
    late Offset offset;
    switch (popupMenuPosition) {
      case PopupMenuPosition.over:
        offset = Offset.zero;
      case PopupMenuPosition.under:
        offset = Offset(0, button.size.height + 8);
    }
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(offset, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero) + offset,
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    await showMenu(
      context: context,
      position: position,
      items: widget.actions,
    );

    contextMenuOpen = false;
    if (widget.onStateChanged != null) widget.onStateChanged!(contextMenuOpen);
  }
}
