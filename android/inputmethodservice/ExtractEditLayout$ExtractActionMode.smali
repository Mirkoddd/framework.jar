.class Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
.super Landroid/view/ActionMode;
.source "ExtractEditLayout.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/ExtractEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractActionMode"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/inputmethodservice/ExtractEditLayout;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V
    .registers 5
    .parameter
    .parameter "cb"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 104
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 105
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 106
    iput-object p2, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 107
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 147
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result v0

    .line 149
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eq v0, p0, :cond_8

    .line 173
    :goto_7
    return-void

    .line 160
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 161
    iput-object v2, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_1c

    .line 164
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 167
    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/ExtractEditLayout;->sendAccessibilityEvent(I)V

    .line 172
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iput-object v2, v0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    goto :goto_7
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 197
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 138
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 142
    return-void

    .line 140
    :catchall_12
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 206
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_28

    .line 210
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 211
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x1020021

    if-ne v1, v2, :cond_26

    .line 212
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    #getter for: Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Landroid/inputmethodservice/ExtractEditLayout;->access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->setExtractSelectionToEnd()V

    .line 213
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    #getter for: Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Landroid/inputmethodservice/ExtractEditLayout;->access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->hideExtractCursorController()V

    :cond_26
    move v1, v0

    .line 219
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 224
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 132
    return-void
.end method

.method public setSubtitle(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 127
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "subtitle"

    .prologue
    .line 122
    return-void
.end method

.method public setTitle(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 117
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 112
    return-void
.end method
