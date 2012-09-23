.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final localLOGV:Z

.field private static sCurrentAppOrientation:I


# instance fields
.field mCurrentRotation:I

.field private mEnabled:Z

.field mLogEnabled:Z

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v3, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 85
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 87
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 88
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v0

    .line 89
    .local v0, nfeature:I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_3c

    .line 92
    :cond_2c
    if-ne p2, v3, :cond_30

    .line 93
    iput v4, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 100
    :cond_30
    :goto_30
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3b

    .line 103
    new-instance v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v1, p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;I)V

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    .line 105
    :cond_3b
    return-void

    .line 97
    :cond_3c
    if-ne p2, v3, :cond_30

    .line 98
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/WindowOrientationListener;->mRate:I

    goto :goto_30
.end method

.method public static setCurrentAppOrientation(I)V
    .registers 1
    .parameter "appOrientation"

    .prologue
    .line 868
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 870
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public disable()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 130
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_b
    :goto_b
    return-void

    .line 133
    :cond_c
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 135
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 136
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_b
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 114
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_b
    :goto_b
    return-void

    .line 117
    :cond_c
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_b

    .line 119
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_b
.end method

.method public getProposedRotation()I
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_b

    .line 160
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v0

    .line 162
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .registers 2
    .parameter "rotation"

    .prologue
    .line 147
    iput p1, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 148
    return-void
.end method

.method public setLogEnabled(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 191
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 192
    return-void
.end method
