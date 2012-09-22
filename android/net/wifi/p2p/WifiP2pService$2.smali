.class Landroid/net/wifi/p2p/WifiP2pService$2;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService;->showTimerExpiredDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .registers 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$2;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 403
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$2;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 404
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$2;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 406
    :cond_e
    return-void
.end method
