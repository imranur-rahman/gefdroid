.class Lcom/millennialmedia/android/AccelerometerManager$1;
.super Ljava/lang/Object;
.source "AccelerometerManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AccelerometerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private force:F

.field private lastShake:J

.field private lastUpdate:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private now:J

.field private timeDiff:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    .line 127
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->timeDiff:J

    .line 128
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastUpdate:J

    .line 129
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastShake:J

    .line 131
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    .line 132
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    .line 133
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    .line 134
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastX:F

    .line 135
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastY:F

    .line 136
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastZ:F

    .line 137
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->force:F

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 146
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    .line 148
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    .line 149
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    .line 150
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    .line 154
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastUpdate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 156
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastUpdate:J

    .line 157
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastShake:J

    .line 158
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastX:F

    .line 159
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastY:F

    .line 160
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastZ:F

    .line 161
    # getter for: Lcom/millennialmedia/android/AccelerometerManager;->listener:Lcom/millennialmedia/android/AccelerometerListener;
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->access$0()Lcom/millennialmedia/android/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    iget v2, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    iget v3, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/millennialmedia/android/AccelerometerListener;->didAccelerate(FFF)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    iget-wide v2, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastUpdate:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->timeDiff:J

    .line 165
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->timeDiff:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 167
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastZ:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->timeDiff:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->force:F

    .line 168
    # getter for: Lcom/millennialmedia/android/AccelerometerManager;->listener:Lcom/millennialmedia/android/AccelerometerListener;
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->access$0()Lcom/millennialmedia/android/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    iget v2, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    iget v3, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/millennialmedia/android/AccelerometerListener;->didAccelerate(FFF)V

    .line 169
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->force:F

    # getter for: Lcom/millennialmedia/android/AccelerometerManager;->threshold:F
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->access$1()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 171
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    iget-wide v2, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastShake:J

    sub-long/2addr v0, v2

    # getter for: Lcom/millennialmedia/android/AccelerometerManager;->interval:I
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->access$2()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 174
    # getter for: Lcom/millennialmedia/android/AccelerometerManager;->listener:Lcom/millennialmedia/android/AccelerometerListener;
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->access$0()Lcom/millennialmedia/android/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->force:F

    invoke-interface {v0, v1}, Lcom/millennialmedia/android/AccelerometerListener;->didShake(F)V

    .line 176
    :cond_2
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastShake:J

    .line 178
    :cond_3
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->x:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastX:F

    .line 179
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->y:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastY:F

    .line 180
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->z:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastZ:F

    .line 181
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->now:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerManager$1;->lastUpdate:J

    goto :goto_0
.end method
