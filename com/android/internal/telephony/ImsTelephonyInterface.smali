.class public Lcom/android/internal/telephony/ImsTelephonyInterface;
.super Ljava/lang/Object;
.source "ImsTelephonyInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitiateIMS(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .registers 3
    .parameter "context"
    .parameter "sCommandsInterface"
    .parameter "sPhoneNotifier"

    .prologue
    .line 22
    return-void
.end method

.method public static getIMSPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isIMSEnabled()Z
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getImsInstance()Lcom/android/internal/telephony/ImsTelephonyInterface;
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
