.class Landroid/sec/clipboard/ClipboardExManager$2;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;

.field final synthetic val$clipData:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 269
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$100()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-interface {v3, v4, v5}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 271
    .local v0, Result:Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 273
    .local v2, msg:Landroid/os/Message;
    if-eqz v0, :cond_29

    .line 274
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 278
    :goto_1f
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    .end local v0           #Result:Z
    .end local v2           #msg:Landroid/os/Message;
    :cond_28
    :goto_28
    return-void

    .line 276
    .restart local v0       #Result:Z
    .restart local v2       #msg:Landroid/os/Message;
    :cond_29
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1f

    .line 280
    .end local v0           #Result:Z
    .end local v2           #msg:Landroid/os/Message;
    :catch_2d
    move-exception v1

    .line 281
    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_28

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setData(ClipboardData)(RemoteException): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
