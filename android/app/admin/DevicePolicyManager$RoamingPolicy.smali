.class public Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoamingPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2909
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2910
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 2911
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2905
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .registers 4

    .prologue
    .line 3002
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_15

    .line 3004
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3009
    :goto_a
    return v1

    .line 3005
    :catch_b
    move-exception v0

    .line 3006
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3009
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isRoamingPushEnabled()Z
    .registers 4

    .prologue
    .line 2969
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_15

    .line 2971
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2976
    :goto_a
    return v1

    .line 2972
    :catch_b
    move-exception v0

    .line 2973
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2976
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingSyncEnabled()Z
    .registers 4

    .prologue
    .line 2935
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_15

    .line 2937
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2942
    :goto_a
    return v1

    .line 2938
    :catch_b
    move-exception v0

    .line 2939
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2942
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRoamingData(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2986
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 2988
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2993
    :cond_9
    :goto_9
    return-void

    .line 2989
    :catch_a
    move-exception v0

    .line 2990
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingPush(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2952
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 2954
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2959
    :cond_9
    :goto_9
    return-void

    .line 2955
    :catch_a
    move-exception v0

    .line 2956
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingSync(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2920
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 2922
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2927
    :cond_9
    :goto_9
    return-void

    .line 2923
    :catch_a
    move-exception v0

    .line 2924
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
