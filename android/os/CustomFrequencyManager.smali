.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$FrequencyRequest;
    }
.end annotation


# static fields
.field public static final FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final FREQUENCY_REQ_TYPE_SYSBUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    .line 37
    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public getSupportedGPUFrequency()[I
    .registers 3

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedGPUFrequency()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 45
    :goto_6
    return-object v1

    .line 43
    :catch_7
    move-exception v0

    .line 44
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 3

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedSysBusFrequency()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 54
    :goto_6
    return-object v1

    .line 52
    :catch_7
    move-exception v0

    .line 53
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public newFrequencyRequest(IIJ)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .registers 11
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"

    .prologue
    .line 168
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 169
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJ)V

    .line 173
    :goto_c
    return-object v0

    .line 170
    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 171
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJ)V

    goto :goto_c

    .line 173
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method
