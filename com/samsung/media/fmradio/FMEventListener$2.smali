.class Lcom/samsung/media/fmradio/FMEventListener$2;
.super Landroid/os/Handler;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 182
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_b6

    .line 255
    :goto_5
    return-void

    .line 185
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 186
    .local v0, freq:Ljava/lang/Long;
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    goto :goto_5

    .line 190
    .end local v0           #freq:Ljava/lang/Long;
    :pswitch_14
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    goto :goto_5

    .line 194
    :pswitch_1a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [J

    move-object v1, v4

    check-cast v1, [J

    .line 195
    .local v1, freqArry:[J
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4, v1}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    goto :goto_5

    .line 199
    .end local v1           #freqArry:[J
    :pswitch_27
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [J

    move-object v1, v4

    check-cast v1, [J

    .line 200
    .restart local v1       #freqArry:[J
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4, v1}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    goto :goto_5

    .line 204
    .end local v1           #freqArry:[J
    :pswitch_34
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    goto :goto_5

    .line 208
    :pswitch_3a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 209
    .local v3, reasonCode:I
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4, v3}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    goto :goto_5

    .line 213
    .end local v3           #reasonCode:I
    :pswitch_48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 214
    .restart local v0       #freq:Ljava/lang/Long;
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto :goto_5

    .line 218
    .end local v0           #freq:Ljava/lang/Long;
    :pswitch_56
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    goto :goto_5

    .line 222
    :pswitch_5c
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    goto :goto_5

    .line 227
    :pswitch_62
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 228
    .local v2, obArry:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v4, v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 233
    .end local v2           #obArry:[Ljava/lang/Object;
    :pswitch_82
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    goto/16 :goto_5

    .line 237
    :pswitch_89
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    goto/16 :goto_5

    .line 241
    :pswitch_90
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    goto/16 :goto_5

    .line 245
    :pswitch_97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 246
    .restart local v0       #freq:Ljava/lang/Long;
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    .line 247
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto/16 :goto_5

    .line 252
    .end local v0           #freq:Ljava/lang/Long;
    :pswitch_af
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->volumeLock()V

    goto/16 :goto_5

    .line 182
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_6
        :pswitch_14
        :pswitch_27
        :pswitch_1a
        :pswitch_34
        :pswitch_3a
        :pswitch_48
        :pswitch_56
        :pswitch_5c
        :pswitch_62
        :pswitch_82
        :pswitch_89
        :pswitch_90
        :pswitch_97
        :pswitch_af
    .end packed-switch
.end method
