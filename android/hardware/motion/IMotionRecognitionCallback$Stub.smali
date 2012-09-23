.class public abstract Landroid/hardware/motion/IMotionRecognitionCallback$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionCallback.java"

# interfaces
.implements Landroid/hardware/motion/IMotionRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/IMotionRecognitionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/IMotionRecognitionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.motion.IMotionRecognitionCallback"

.field static final TRANSACTION_getListenerInfo:I = 0x2

.field static final TRANSACTION_motionCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.hardware.motion.IMotionRecognitionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "android.hardware.motion.IMotionRecognitionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/motion/IMotionRecognitionCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/hardware/motion/IMotionRecognitionCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/hardware/motion/IMotionRecognitionCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_3c

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "android.hardware.motion.IMotionRecognitionCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "android.hardware.motion.IMotionRecognitionCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 50
    sget-object v3, Landroid/hardware/motion/MREvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MREvent;

    .line 55
    .local v0, _arg0:Landroid/hardware/motion/MREvent;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->motionCallback(Landroid/hardware/motion/MREvent;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 53
    .end local v0           #_arg0:Landroid/hardware/motion/MREvent;
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/motion/MREvent;
    goto :goto_22

    .line 61
    .end local v0           #_arg0:Landroid/hardware/motion/MREvent;
    :sswitch_2b
    const-string v3, "android.hardware.motion.IMotionRecognitionCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->getListenerInfo()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
