.class Landroid/server/BluetoothService$1;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothService;->disable(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 496
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "stutdown case, use thread for disable to prevent blocking shutdown thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->startdisable(Z)Z

    .line 498
    return-void
.end method
