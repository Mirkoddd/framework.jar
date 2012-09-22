.class Landroid/webkit/WebView$11;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
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
    .line 5783
    iput-object p1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 5785
    iget-object v1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v1

    sparse-switch v1, :sswitch_data_22

    .line 5797
    :cond_9
    :goto_9
    return-void

    .line 5789
    :sswitch_a
    iget-object v1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)Landroid/webkit/PointerDevice$TouchOptimizer;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/webkit/PointerDevice$TouchOptimizer;->onDraw(J)Landroid/view/MotionEvent;

    move-result-object v0

    .line 5790
    .local v0, ev:Landroid/view/MotionEvent;
    if-eqz v0, :cond_9

    .line 5793
    iget-object v1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->_onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v1, v0}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    .line 5794
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_9

    .line 5785
    nop

    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_a
        0x8 -> :sswitch_a
        0x9 -> :sswitch_a
    .end sparse-switch
.end method
