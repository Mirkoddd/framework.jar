.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .registers 2
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 813
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$400(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 814
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$500(Landroid/widget/SearchView;)V

    .line 824
    :cond_d
    :goto_d
    return-void

    .line 815
    :cond_e
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/SearchView;->access$600(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1c

    .line 816
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$700(Landroid/widget/SearchView;)V

    goto :goto_d

    .line 817
    :cond_1c
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$800(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    .line 818
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)V

    goto :goto_d

    .line 819
    :cond_2a
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_38

    .line 820
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$1100(Landroid/widget/SearchView;)V

    goto :goto_d

    .line 821
    :cond_38
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_d

    .line 822
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)V

    goto :goto_d
.end method
