.class Landroid/net/wifi/WifiStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 649
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "edm.intent.action.disable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 650
    const-string/jumbo v2, "netId"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 651
    .local v1, netId:I
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 657
    .end local v1           #netId:I
    :cond_17
    :goto_17
    return-void

    .line 652
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "edm.intent.action.enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 653
    const-string/jumbo v2, "netId"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 654
    .restart local v1       #netId:I
    const-string v2, "enableOthers"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 655
    .local v0, enableOthers:Z
    invoke-static {v1, v0}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    goto :goto_17
.end method
