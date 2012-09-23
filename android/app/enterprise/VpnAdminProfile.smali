.class public Landroid/app/enterprise/VpnAdminProfile;
.super Ljava/lang/Object;
.source "VpnAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/VpnAdminProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final VPN_TYPE_L2TP:Ljava/lang/String; = "L2TP"

.field public static final VPN_TYPE_L2TP_IPSEC_CRT:Ljava/lang/String; = "L2TP_IPSEC"

.field public static final VPN_TYPE_L2TP_IPSEC_PSK:Ljava/lang/String; = "L2TP_IPSEC_PSK"

.field public static final VPN_TYPE_PPTP:Ljava/lang/String; = "PPTP"


# instance fields
.field public IPSecCaCertificate:Ljava/lang/String;

.field public IPSecPreSharedKey:Ljava/lang/String;

.field public IPSecUserCertificate:Ljava/lang/String;

.field public L2TPSecret:Ljava/lang/String;

.field public L2TPSecretEnable:Z

.field public PPTPEncryptionEnable:Z

.field public profileName:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userPassword:Ljava/lang/String;

.field public vpnType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Landroid/app/enterprise/VpnAdminProfile$1;

    invoke-direct {v0}, Landroid/app/enterprise/VpnAdminProfile$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/VpnAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    .line 50
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    .line 48
    iput-boolean v3, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    .line 50
    iput-boolean v3, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    .line 52
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 101
    .local v0, b:B
    if-ne v0, v2, :cond_70

    move v1, v2

    :goto_4d
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 103
    if-ne v0, v2, :cond_72

    :goto_55
    iput-boolean v2, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    .line 108
    return-void

    :cond_70
    move v1, v3

    .line 101
    goto :goto_4d

    :cond_72
    move v2, v3

    .line 103
    goto :goto_55
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/VpnAdminProfile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/app/enterprise/VpnAdminProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    if-eqz v0, :cond_3e

    .line 77
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    :goto_22
    iget-boolean v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    if-eqz v0, :cond_42

    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    :goto_29
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void

    .line 79
    :cond_3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_22

    .line 83
    :cond_42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_29
.end method
