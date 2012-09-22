.class Landroid/webkit/WebView$12;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onFixedLengthZoomAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 6372
    iput-object p1, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 6374
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIsDoubleTapping:Z

    if-nez v0, :cond_c

    .line 6375
    iget-object v0, p0, Landroid/webkit/WebView$12;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setNoFastDraw(Z)V

    .line 6376
    :cond_c
    return-void
.end method
