.class public Lorg/mokee/platform/internal/display/ColorTemperatureController;
.super Lorg/mokee/platform/internal/display/LiveDisplayFeature;
.source "ColorTemperatureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/display/ColorTemperatureController$1;
    }
.end annotation


# static fields
.field private static final DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

.field private static final DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x36ee80L


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorBalanceCurve:[D

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorTemperature:I

.field private final mColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDayTemperature:I

.field private final mDefaultDayTemperature:I

.field private final mDefaultNightTemperature:I

.field private final mDisplayHardware:Lorg/mokee/platform/internal/display/DisplayHardwareController;

.field private final mHardware:Lmokee/hardware/MKHardwareManager;

.field private mNightTemperature:I

.field private final mTransitionRunnable:Ljava/lang/Runnable;

.field private final mUseColorBalance:Z

.field private final mUseTemperatureAdjustment:Z


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/display/ColorTemperatureController;)Lmokee/hardware/MKHardwareManager;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mHardware:Lmokee/hardware/MKHardwareManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/display/ColorTemperatureController;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "display_temperature_day"

    invoke-static {v0}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    sput-object v0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    .line 71
    const-string/jumbo v0, "display_temperature_night"

    invoke-static {v0}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    sput-object v0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/mokee/platform/internal/display/DisplayHardwareController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "displayHardware"    # Lorg/mokee/platform/internal/display/DisplayHardwareController;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 170
    new-instance v0, Lorg/mokee/platform/internal/display/ColorTemperatureController$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController$1;-><init>(Lorg/mokee/platform/internal/display/ColorTemperatureController;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p3, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    .line 77
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 79
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 80
    const/high16 v1, 0x20000

    .line 79
    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    .line 81
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    .line 83
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->hasColorAdjustment()Z

    move-result v0

    .line 83
    :goto_0
    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    .line 86
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x3f060001

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 88
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    const v1, 0x3f060002

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 92
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x3f060006

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    const v2, 0x3f060007

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    .line 98
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    .line 99
    iget v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    int-to-double v2, v2

    .line 100
    iget-object v4, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    .line 97
    invoke-static/range {v0 .. v5}, Lorg/mokee/internal/util/MathUtils;->powerCurve(DDD)[D

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorBalanceCurve:[D

    .line 74
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static adj(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "sunset"    # J
    .param p4, "sunrise"    # J

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x4a5bba00    # 3600000.0f

    const-wide/32 v4, 0x36ee80

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 296
    cmp-long v0, p2, v8

    if-ltz v0, :cond_0

    cmp-long v0, p4, v8

    if-gez v0, :cond_1

    .line 298
    :cond_0
    return v3

    .line 297
    :cond_1
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    add-long v0, p4, v4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 301
    add-long v0, p2, v4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 303
    sub-long v0, p0, p2

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 302
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 306
    :cond_2
    cmp-long v0, p0, p4

    if-ltz v0, :cond_3

    .line 308
    add-long v0, p4, v4

    sub-long/2addr v0, p0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 307
    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 311
    :cond_3
    return v2
.end method

.method private declared-synchronized animateColorBalance(I)V
    .locals 6
    .param p1, "balance"    # I

    .prologue
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v1}, Lmokee/hardware/MKHardwareManager;->getColorBalance()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 219
    .local v0, "current":I
    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 220
    return-void

    .line 223
    :cond_0
    sub-int v1, v0, p1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    int-to-long v2, v1

    .line 226
    .local v2, "duration":J
    sget-boolean v1, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 227
    const-string/jumbo v1, "LiveDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateDisplayColor current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    const-string/jumbo v5, " target="

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    const-string/jumbo v5, " duration="

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 236
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v4, 0x1

    aput p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 237
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/mokee/platform/internal/display/ColorTemperatureController$2;

    invoke-direct {v4, p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController$2;-><init>(Lorg/mokee/platform/internal/display/ColorTemperatureController;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    iget-object v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 214
    return-void

    .end local v0    # "current":I
    .end local v2    # "duration":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTwilightK()I
    .locals 9

    .prologue
    .line 321
    const/high16 v6, 0x3f800000    # 1.0f

    .line 322
    .local v6, "adjustment":F
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getTwilight()Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;

    move-result-object v7

    .line 324
    .local v7, "twilight":Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;
    if-eqz v7, :cond_0

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 326
    .local v0, "now":J
    invoke-virtual {v7}, Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->adj(JJJ)F

    move-result v8

    .line 327
    invoke-virtual {v7}, Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->adj(JJJ)F

    move-result v2

    .line 326
    mul-float v6, v8, v2

    .line 330
    .end local v0    # "now":J
    :cond_0
    iget v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    int-to-float v2, v2

    iget v3, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private isTransitioning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 179
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    iget v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    if-eq v1, v2, :cond_0

    .line 180
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    iget v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 178
    :cond_0
    return v0
.end method

.method private mapColorTemperatureToBalance(I)I
    .locals 6
    .param p1, "temperature"    # I

    .prologue
    .line 258
    iget-object v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorBalanceCurve:[D

    int-to-double v4, p1

    invoke-static {v2, v4, v5}, Lorg/mokee/internal/util/MathUtils;->powerCurveToLinear([DD)D

    move-result-wide v0

    .line 259
    .local v0, "z":D
    iget-object v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v3, v2

    .line 260
    iget-object v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    double-to-float v4, v0

    .line 259
    invoke-static {v3, v2, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private declared-synchronized setDisplayTemperature(I)V
    .locals 5
    .param p1, "temperature"    # I

    .prologue
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Color temperature out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 266
    return-void

    .line 269
    :cond_0
    :try_start_1
    iput p1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 271
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v2, :cond_1

    .line 272
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mapColorTemperatureToBalance(I)I

    move-result v0

    .line 273
    .local v0, "balance":I
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set color balance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (temperature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->animateColorBalance(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 275
    return-void

    .line 278
    .end local v0    # "balance":I
    :cond_1
    :try_start_2
    invoke-static {p1}, Lmokee/util/ColorUtils;->temperatureToRGB(I)[F

    move-result-object v1

    .line 279
    .local v1, "rgb":[F
    iget-object v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDisplayHardware:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v2, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->setAdditionalAdjustment([F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    sget-boolean v2, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 281
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adjust display temperature to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 263
    return-void

    .end local v1    # "rgb":[F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateColorTemperature()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 188
    .local v1, "temperature":I
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getMode()I

    move-result v0

    .line 190
    .local v0, "mode":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->isLowPowerMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    :cond_0
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 198
    :cond_1
    :goto_0
    sget-boolean v2, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 199
    const-string/jumbo v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateColorTemperature mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    const-string/jumbo v4, " temperature="

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    const-string/jumbo v4, " mColorTemperature="

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    iget v4, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    invoke-direct {p0, v1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->setDisplayTemperature(I)V

    .line 205
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->isTransitioning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    iget-object v2, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 183
    return-void

    .end local v0    # "mode":I
    .end local v1    # "temperature":I
    :cond_4
    monitor-exit p0

    .line 185
    return-void

    .line 192
    .restart local v0    # "mode":I
    .restart local v1    # "temperature":I
    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 193
    :try_start_1
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    goto :goto_0

    .line 194
    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 195
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getTwilightK()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "mode":I
    .end local v1    # "temperature":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 161
    const-string/jumbo v0, "ColorTemperatureController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 165
    const-string/jumbo v0, "  ColorTemperatureController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    isTransitioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->isTransitioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 119
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 121
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v0, :cond_0

    .line 122
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 125
    :cond_0
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    return v0
.end method

.method getColorBalanceRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    return-object v0
.end method

.method getColorTemperature()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperature:I

    return v0
.end method

.method getColorTemperatureRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    return-object v0
.end method

.method getDayColorTemperature()I
    .locals 2

    .prologue
    .line 346
    const-string/jumbo v0, "display_temperature_day"

    .line 347
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 346
    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getDefaultDayTemperature()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultDayTemperature:I

    return v0
.end method

.method getDefaultNightTemperature()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    return v0
.end method

.method getNightColorTemperature()I
    .locals 2

    .prologue
    .line 355
    const-string/jumbo v0, "display_temperature_night"

    .line 356
    iget v1, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 355
    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onScreenStateChanged()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 134
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method protected declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 149
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 152
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    :cond_2
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    .line 155
    :cond_3
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 148
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mDayTemperature:I

    .line 110
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/ColorTemperatureController;->mNightTemperature:I

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/mokee/platform/internal/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->registerSettings([Landroid/net/Uri;)V

    .line 104
    return-void
.end method

.method protected onTwilightUpdated()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 143
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->updateColorTemperature()V

    .line 129
    return-void
.end method

.method setDayColorTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 351
    const-string/jumbo v0, "display_temperature_day"

    invoke-virtual {p0, v0, p1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->putInt(Ljava/lang/String;I)V

    .line 350
    return-void
.end method

.method setNightColorTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 360
    const-string/jumbo v0, "display_temperature_night"

    invoke-virtual {p0, v0, p1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->putInt(Ljava/lang/String;I)V

    .line 359
    return-void
.end method
