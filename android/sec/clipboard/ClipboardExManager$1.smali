.class Landroid/sec/clipboard/ClipboardExManager$1;
.super Landroid/os/Handler;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 104
    :cond_6
    :goto_6
    return-void

    .line 93
    :pswitch_7
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10405e2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 98
    :pswitch_20
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104068b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Fail set data "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 91
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_7
        :pswitch_20
    .end packed-switch
.end method
