.class Landroid/server/BluetoothEventLoop$2;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 139
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 140
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothEventLoop;->access$102(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 144
    :cond_a
    :goto_a
    return-void

    .line 141
    .restart local p2
    :cond_b
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 142
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2
    #setter for: Landroid/server/BluetoothEventLoop;->mSap:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Landroid/server/BluetoothEventLoop;->access$202(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_a
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 146
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 147
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #setter for: Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Landroid/server/BluetoothEventLoop;->access$102(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 151
    :cond_9
    :goto_9
    return-void

    .line 148
    :cond_a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 149
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #setter for: Landroid/server/BluetoothEventLoop;->mSap:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, v1}, Landroid/server/BluetoothEventLoop;->access$202(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_9
.end method
