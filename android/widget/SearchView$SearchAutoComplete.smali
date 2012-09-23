.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Landroid/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1602
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1603
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1604
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1607
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1608
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1609
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1612
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1613
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1614
    return-void
.end method

.method static synthetic access$1500(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1596
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .registers 2

    .prologue
    .line 1630
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    .prologue
    .line 1701
    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_a

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1691
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1692
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    .line 1693
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1706
    const/4 v2, 0x4

    if-ne p1, v2, :cond_37

    .line 1709
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1a

    .line 1710
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1711
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_19

    .line 1712
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1731
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_19
    :goto_19
    return v1

    .line 1715
    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_37

    .line 1716
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1717
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_29

    .line 1718
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1720
    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1726
    const/4 v1, 0x0

    goto :goto_19

    .line 1731
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_19
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9
    .parameter "hasWindowFocus"

    .prologue
    const/4 v6, 0x1

    .line 1657
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1660
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1662
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    .line 1663
    .local v2, mKeyboard:I
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_1d

    and-int/lit8 v4, v2, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    .line 1687
    :cond_1d
    :goto_1d
    return-void

    .line 1670
    :cond_1e
    if-eqz p1, :cond_1d

    iget-object v4, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1d

    .line 1671
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1673
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1676
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1678
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1679
    .local v3, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10103e9

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1680
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_63

    .line 1681
    invoke-virtual {p0, v6}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisibleWithoutShowDropDown(Z)V

    goto :goto_1d

    .line 1683
    :cond_63
    invoke-virtual {p0, v6}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    goto :goto_1d
.end method

.method public performCompletion()V
    .registers 1

    .prologue
    .line 1649
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 1639
    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .registers 2
    .parameter "searchView"

    .prologue
    .line 1617
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    .line 1618
    return-void
.end method

.method public setThreshold(I)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 1622
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1623
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1624
    return-void
.end method
