.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2009
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_138

    .line 2133
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! unhandled message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2136
    :goto_1f
    :sswitch_1f
    return v3

    .line 2011
    :sswitch_20
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_31

    .line 2012
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x11001

    invoke-virtual {v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_1f

    .line 2014
    :cond_31
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiP2pService connection failure, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1f

    .line 2018
    :sswitch_4c
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1f

    .line 2023
    :sswitch_67
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_6e

    move v2, v3

    :cond_6e
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$402(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    .line 2033
    :sswitch_72
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, -0x1

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_1f

    .line 2036
    :sswitch_7f
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_1f

    .line 2040
    :sswitch_8f
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_96

    move v2, v3

    :cond_96
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    .line 2043
    :sswitch_9a
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_a1

    move v2, v3

    :cond_a1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$702(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1f

    .line 2099
    :sswitch_a6
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    const-string/jumbo v1, "wapi_string"

    .line 2101
    .local v1, wapiEventName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2103
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2104
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 2109
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wapiEventName:Ljava/lang/String;
    :sswitch_da
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const-string/jumbo v1, "wapi_string"

    .line 2111
    .restart local v1       #wapiEventName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2113
    .restart local v0       #intent:Landroid/content/Intent;
    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2114
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 2118
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wapiEventName:Ljava/lang/String;
    :sswitch_110
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 2119
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_1f

    .line 2123
    :sswitch_11c
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const/16 v4, 0xb

    new-instance v5, Landroid/net/wifi/WpsResult;

    sget-object v6, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v5, v6}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1f

    .line 2129
    :sswitch_130
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 2009
    nop

    :sswitch_data_138
    .sparse-switch
        0x11000 -> :sswitch_20
        0x11004 -> :sswitch_4c
        0x20001 -> :sswitch_1f
        0x20002 -> :sswitch_1f
        0x2000b -> :sswitch_1f
        0x2000c -> :sswitch_1f
        0x2000d -> :sswitch_1f
        0x2000e -> :sswitch_1f
        0x20011 -> :sswitch_1f
        0x20012 -> :sswitch_1f
        0x20015 -> :sswitch_1f
        0x20016 -> :sswitch_1f
        0x20017 -> :sswitch_1f
        0x20018 -> :sswitch_1f
        0x20019 -> :sswitch_1f
        0x2001a -> :sswitch_1f
        0x2001b -> :sswitch_1f
        0x2001c -> :sswitch_1f
        0x2001d -> :sswitch_1f
        0x2001e -> :sswitch_1f
        0x2001f -> :sswitch_67
        0x20033 -> :sswitch_72
        0x20034 -> :sswitch_72
        0x20035 -> :sswitch_72
        0x20036 -> :sswitch_72
        0x20037 -> :sswitch_1f
        0x20038 -> :sswitch_72
        0x20039 -> :sswitch_1f
        0x2003a -> :sswitch_1f
        0x2003b -> :sswitch_72
        0x2003c -> :sswitch_7f
        0x20047 -> :sswitch_1f
        0x20048 -> :sswitch_1f
        0x20049 -> :sswitch_1f
        0x2004a -> :sswitch_1f
        0x2004b -> :sswitch_1f
        0x2004c -> :sswitch_1f
        0x2004d -> :sswitch_1f
        0x20050 -> :sswitch_1f
        0x20052 -> :sswitch_8f
        0x20053 -> :sswitch_1f
        0x20056 -> :sswitch_1f
        0x20057 -> :sswitch_1f
        0x20058 -> :sswitch_1f
        0x20059 -> :sswitch_11c
        0x2005a -> :sswitch_1f
        0x2005b -> :sswitch_9a
        0x2007b -> :sswitch_1f
        0x2007d -> :sswitch_1f
        0x23001 -> :sswitch_130
        0x24001 -> :sswitch_1f
        0x24002 -> :sswitch_1f
        0x24003 -> :sswitch_1f
        0x24004 -> :sswitch_1f
        0x24005 -> :sswitch_1f
        0x24006 -> :sswitch_1f
        0x24007 -> :sswitch_1f
        0x24008 -> :sswitch_1f
        0x24009 -> :sswitch_110
        0x2400d -> :sswitch_a6
        0x2400e -> :sswitch_da
        0x30004 -> :sswitch_1f
        0x30005 -> :sswitch_1f
    .end sparse-switch
.end method
