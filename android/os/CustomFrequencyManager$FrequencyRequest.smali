.class public Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrequencyRequest"
.end annotation


# instance fields
.field mFrequency:I

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJ)V
    .registers 9
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    .line 67
    :try_start_8
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GPUFrequencyRequest : invalid frequency range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_18

    .line 75
    :catch_18
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1c
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    .line 79
    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    .line 80
    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    .line 81
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 82
    return-void

    .line 70
    :cond_2a
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1c

    .line 71
    :try_start_2d
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SysBusFrequencyRequest : invalid frequency range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3d} :catch_18
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method public doFrequencyRequest()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method
