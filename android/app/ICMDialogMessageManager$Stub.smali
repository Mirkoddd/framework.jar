.class public abstract Landroid/app/ICMDialogMessageManager$Stub;
.super Landroid/os/Binder;
.source "ICMDialogMessageManager.java"

# interfaces
.implements Landroid/app/ICMDialogMessageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ICMDialogMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ICMDialogMessageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ICMDialogMessageManager"

.field static final TRANSACTION_getPermissionAlertDialogMessage:I = 0x1

.field static final TRANSACTION_getPermissionAlertDialogTitle:I = 0x3

.field static final TRANSACTION_getPermissionErrorDialogMessage:I = 0x2

.field static final TRANSACTION_getPermissionErrorDialogTitle:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 14
    const-string v0, "android.app.ICMDialogMessageManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ICMDialogMessageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ICMDialogMessageManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_4

    .line 23
    const/4 v0, 0x0

    .line 29
    :goto_3
    return-object v0

    .line 25
    :cond_4
    const-string v1, "android.app.ICMDialogMessageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 26
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/ICMDialogMessageManager;

    if-eqz v1, :cond_13

    .line 27
    check-cast v0, Landroid/app/ICMDialogMessageManager;

    goto :goto_3

    .line 29
    :cond_13
    new-instance v0, Landroid/app/ICMDialogMessageManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/ICMDialogMessageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 33
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
    const/4 v3, 0x1

    .line 37
    sparse-switch p1, :sswitch_data_60

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 41
    :sswitch_9
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 46
    :sswitch_f
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionAlertDialogMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 58
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionErrorDialogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 70
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3f
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionAlertDialogTitle()Ljava/lang/String;

    move-result-object v2

    .line 72
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 78
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4f
    const-string v4, "android.app.ICMDialogMessageManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/ICMDialogMessageManager$Stub;->getPermissionErrorDialogTitle()Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 37
    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
