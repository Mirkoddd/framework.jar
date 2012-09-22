.class Landroid/server/BluetoothDeviceProperties;
.super Ljava/lang/Object;
.source "BluetoothDeviceProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceProperties"


# instance fields
.field private final mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRemoteServicePoperiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mRemoteServicePoperiesMap:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    .line 40
    return-void
.end method


# virtual methods
.method addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .parameter "address"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v8, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 49
    :try_start_3
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 50
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_12

    .line 51
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v7, p2

    if-ge v0, v7, :cond_89

    .line 55
    aget-object v3, p2, v0

    .line 56
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 58
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_3c

    .line 59
    const-string v7, "BluetoothDeviceProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Remote Device Property at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 63
    :cond_3c
    const-string v7, "UUIDs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "Nodes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "Services"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 64
    :cond_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 66
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_66
    if-ge v1, v2, :cond_77

    .line 67
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 70
    :cond_77
    if-lez v2, :cond_7d

    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_7d
    :goto_7d
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 79
    .end local v0           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_81
    move-exception v7

    monitor-exit v8
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw v7

    .line 74
    .restart local v0       #i:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_84
    add-int/lit8 v0, v0, 0x1

    :try_start_86
    aget-object v4, p2, v0

    goto :goto_7d

    .line 78
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_89
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_81

    .line 83
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v7, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 84
    return-object v5
.end method

.method addRemoteServiceProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .parameter "servicePath"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const-string v7, "BluetoothDeviceProperties"

    const-string v8, "addRemoteServiceProperties"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v8, p0, Landroid/server/BluetoothDeviceProperties;->mRemoteServicePoperiesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 157
    :try_start_a
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mRemoteServicePoperiesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 158
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_19

    .line 159
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 162
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    array-length v7, p2

    if-ge v0, v7, :cond_98

    .line 163
    aget-object v3, p2, v0

    .line 164
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 167
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_43

    .line 168
    const-string v7, "BluetoothDeviceProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Remote Service Property at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 173
    :cond_43
    const-string v7, "Characteristics"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 176
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5d
    if-ge v1, v2, :cond_6e

    .line 177
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 180
    :cond_6e
    if-lez v2, :cond_74

    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_74
    :goto_74
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 190
    .end local v0           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_78
    move-exception v7

    monitor-exit v8
    :try_end_7a
    .catchall {:try_start_a .. :try_end_7a} :catchall_78

    throw v7

    .line 184
    .restart local v0       #i:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    :try_start_7d
    aget-object v4, p2, v0

    .line 185
    const-string v7, "BluetoothDeviceProperties"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRemoteServiceProperties  Praveen  UUID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 189
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_98
    iget-object v7, p0, Landroid/server/BluetoothDeviceProperties;->mRemoteServicePoperiesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit v8
    :try_end_9e
    .catchall {:try_start_7d .. :try_end_9e} :catchall_78

    .line 191
    return-object v5
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "address"
    .parameter "property"

    .prologue
    .line 118
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 119
    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 120
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 121
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    .line 133
    :goto_14
    return-object v1

    .line 126
    :cond_15
    invoke-virtual {p0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_26

    .line 128
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto :goto_14

    .line 131
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1

    .restart local v0       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 132
    const-string v1, "BluetoothDeviceProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    goto :goto_14
.end method

.method getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "servicePath"
    .parameter "property"

    .prologue
    .line 196
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mRemoteServicePoperiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 197
    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mRemoteServicePoperiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 198
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 199
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    .line 210
    :goto_14
    return-object v1

    .line 204
    :cond_15
    invoke-virtual {p0, p1}, Landroid/server/BluetoothDeviceProperties;->updateServiceCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_26

    .line 206
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    goto :goto_14

    .line 209
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1

    .restart local v0       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 210
    const/4 v1, 0x0

    goto :goto_14
.end method

.method isEmpty()Z
    .registers 3

    .prologue
    .line 106
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 107
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 108
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method isInCache(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 100
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 101
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 102
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 113
    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 88
    iget-object v2, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 89
    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 90
    .local v0, propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_17

    .line 91
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_15
    monitor-exit v2

    .line 97
    return-void

    .line 94
    :cond_17
    const-string v1, "BluetoothDeviceProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteDeviceProperty for a device not in cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 96
    .end local v0           #propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method updateCache(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 139
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 141
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method updateServiceCache(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .parameter "objPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Landroid/server/BluetoothDeviceProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getRemoteServiceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothDeviceProperties;->addRemoteServiceProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 150
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
