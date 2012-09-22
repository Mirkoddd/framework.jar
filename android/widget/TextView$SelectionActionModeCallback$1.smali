.class Landroid/widget/TextView$SelectionActionModeCallback$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$SelectionActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SelectionActionModeCallback;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SelectionActionModeCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 11258
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 11262
    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    iget-object v1, v1, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 11263
    .local v0, clipExMgr:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    iget-object v1, v1, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_36

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 11265
    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    iget-object v1, v1, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 11268
    :cond_36
    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback$1;->this$1:Landroid/widget/TextView$SelectionActionModeCallback;

    iget-object v1, v1, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 11269
    return-void
.end method
