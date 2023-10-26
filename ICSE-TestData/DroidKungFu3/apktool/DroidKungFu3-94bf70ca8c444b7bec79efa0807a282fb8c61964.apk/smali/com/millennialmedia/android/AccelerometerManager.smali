.class public Lcom/millennialmedia/android/AccelerometerManager;
.super Ljava/lang/Object;
.source "AccelerometerManager.java"


# static fields
.field private static interval:I

.field private static listener:Lcom/millennialmedia/android/AccelerometerListener;

.field private static running:Z

.field private static sensor:Landroid/hardware/Sensor;

.field private static sensorEventListener:Landroid/hardware/SensorEventListener;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static supported:Ljava/lang/Boolean;

.field private static threshold:F


# instance fields
.field protected amContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/millennialmedia/android/AccelerometerManager;->threshold:F

    .line 24
    const/16 v0, 0x3e8

    sput v0, Lcom/millennialmedia/android/AccelerometerManager;->interval:I

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/AccelerometerManager;->running:Z

    .line 124
    new-instance v0, Lcom/millennialmedia/android/AccelerometerManager$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/AccelerometerManager$1;-><init>()V

    .line 123
    sput-object v0, Lcom/millennialmedia/android/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/millennialmedia/android/AccelerometerListener;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/millennialmedia/android/AccelerometerManager;->listener:Lcom/millennialmedia/android/AccelerometerListener;

    return-object v0
.end method

.method static synthetic access$1()F
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/millennialmedia/android/AccelerometerManager;->threshold:F

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/millennialmedia/android/AccelerometerManager;->interval:I

    return v0
.end method

.method public static configure(II)V
    .locals 1
    .param p0, "threshold"    # I
    .param p1, "interval"    # I

    .prologue
    .line 84
    int-to-float v0, p0

    sput v0, Lcom/millennialmedia/android/AccelerometerManager;->threshold:F

    .line 85
    sput p1, Lcom/millennialmedia/android/AccelerometerManager;->interval:I

    .line 86
    return-void
.end method

.method public static isListening()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/millennialmedia/android/AccelerometerManager;->running:Z

    return v0
.end method

.method public static isSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    sget-object v1, Lcom/millennialmedia/android/AccelerometerManager;->supported:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 67
    sget-object v1, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/millennialmedia/android/AccelerometerManager;->supported:Ljava/lang/Boolean;

    .line 73
    .end local v0    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_0
    :goto_1
    sget-object v1, Lcom/millennialmedia/android/AccelerometerManager;->supported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 68
    .restart local v0    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 70
    .end local v0    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/millennialmedia/android/AccelerometerManager;->supported:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static startListening(Lcom/millennialmedia/android/AccelerometerListener;)V
    .locals 5
    .param p0, "accelerometerListener"    # Lcom/millennialmedia/android/AccelerometerListener;

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 95
    sget-object v1, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    sput-object v1, Lcom/millennialmedia/android/AccelerometerManager;->sensor:Landroid/hardware/Sensor;

    .line 99
    sget-object v1, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/millennialmedia/android/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/millennialmedia/android/AccelerometerManager;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    sput-boolean v1, Lcom/millennialmedia/android/AccelerometerManager;->running:Z

    .line 100
    sput-object p0, Lcom/millennialmedia/android/AccelerometerManager;->listener:Lcom/millennialmedia/android/AccelerometerListener;

    .line 102
    :cond_0
    return-void
.end method

.method public static startListening(Lcom/millennialmedia/android/AccelerometerListener;II)V
    .locals 0
    .param p0, "accelerometerListener"    # Lcom/millennialmedia/android/AccelerometerListener;
    .param p1, "threshold"    # I
    .param p2, "interval"    # I

    .prologue
    .line 116
    invoke-static {p1, p2}, Lcom/millennialmedia/android/AccelerometerManager;->configure(II)V

    .line 117
    invoke-static {p0}, Lcom/millennialmedia/android/AccelerometerManager;->startListening(Lcom/millennialmedia/android/AccelerometerListener;)V

    .line 118
    return-void
.end method

.method public static stopListening()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/AccelerometerManager;->running:Z

    .line 52
    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/millennialmedia/android/AccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/millennialmedia/android/AccelerometerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
