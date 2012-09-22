.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICustomFrequencyManager"

.field static final TRANSACTION_checkGPUFrequencyRange:I = 0x7

.field static final TRANSACTION_checkSysBusFrequencyRange:I = 0x8

.field static final TRANSACTION_getSupportedGPUFrequency:I = 0x1

.field static final TRANSACTION_getSupportedSysBusFrequency:I = 0x2

.field static final TRANSACTION_releaseGPU:I = 0x4

.field static final TRANSACTION_releaseSysBus:I = 0x6

.field static final TRANSACTION_requestGPU:I = 0x3

.field static final TRANSACTION_requestSysBus:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/ICustomFrequencyManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_98

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 43
    :sswitch_a
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedGPUFrequency()[I

    move-result-object v1

    .line 50
    .local v1, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 56
    .end local v1           #_result:[I
    :sswitch_20
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedSysBusFrequency()[I

    move-result-object v1

    .line 58
    .restart local v1       #_result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 64
    .end local v1           #_result:[I
    :sswitch_30
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestGPU(I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 73
    .end local v0           #_arg0:I
    :sswitch_40
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGPU()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    :sswitch_4c
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestSysBus(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 89
    .end local v0           #_arg0:I
    :sswitch_5c
    const-string v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->releaseSysBus()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 96
    :sswitch_68
    const-string v4, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkGPUFrequencyRange(I)Z

    move-result v1

    .line 100
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v1, :cond_7b

    move v2, v3

    :cond_7b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 106
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_7f
    const-string v4, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysBusFrequencyRange(I)Z

    move-result v1

    .line 110
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v1, :cond_92

    move v2, v3

    :cond_92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_4c
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_68
        0x8 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
