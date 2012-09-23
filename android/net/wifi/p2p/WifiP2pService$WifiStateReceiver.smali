.class Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 289
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$102(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 291
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$100(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 292
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x23034

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 306
    :cond_2e
    :goto_2e
    return-void

    .line 294
    :cond_2f
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 295
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$302(Landroid/net/wifi/p2p/WifiP2pService;I)I

    goto :goto_2e

    .line 297
    :cond_46
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 298
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x23008

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_2e

    .line 299
    :cond_5b
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 300
    const-string/jumbo v1, "phoneinECMState"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v3, :cond_2e

    .line 301
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x23009

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_2e

    .line 303
    :cond_7a
    const-string v1, "android.net.wifi.p2p.TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 304
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #calls: Landroid/net/wifi/p2p/WifiP2pService;->showTimerExpiredDialog()V
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)V

    goto :goto_2e
.end method
