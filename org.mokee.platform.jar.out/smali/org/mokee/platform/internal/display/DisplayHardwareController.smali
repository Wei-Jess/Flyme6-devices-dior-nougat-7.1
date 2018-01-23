.class public Lorg/mokee/platform/internal/display/DisplayHardwareController;
.super Lorg/mokee/platform/internal/display/LiveDisplayFeature;
.source "DisplayHardwareController.java"


# static fields
.field private static final DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

.field private static final DISPLAY_CABC:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;


# instance fields
.field private final mAdditionalAdjustment:[F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorAdjustment:[F

.field private final mDefaultAutoContrast:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mHardware:Lmokee/hardware/MKHardwareManager;

.field private final mMaxColor:I

.field private final mUseAutoContrast:Z

.field private final mUseCABC:Z

.field private final mUseColorAdjustment:Z

.field private final mUseColorEnhancement:Z

.field private final mUseDisplayModes:Z


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/display/DisplayHardwareController;)Lmokee/hardware/MKHardwareManager;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    return-object v0
.end method

.method static synthetic -get1(Lorg/mokee/platform/internal/display/DisplayHardwareController;)I
    .locals 1

    iget v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    return v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/display/DisplayHardwareController;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->screenRefresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "display_auto_contrast"

    invoke-static {v0}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    sput-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    .line 70
    const-string/jumbo v0, "display_color_adjustment"

    invoke-static {v0}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    sput-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    .line 72
    const-string/jumbo v0, "display_color_enhance"

    invoke-static {v0}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    sput-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    .line 74
    const-string/jumbo v0, "display_low_power"

    invoke-static {v0}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    sput-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 59
    invoke-static {}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    .line 60
    invoke-static {}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    .line 79
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 80
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 81
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    .line 82
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x3f050006

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultCABC:Z

    .line 85
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 86
    const/4 v1, 0x2

    .line 85
    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    .line 87
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x3f050005

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 90
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 91
    const/16 v1, 0x1000

    .line 90
    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    .line 92
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x3f050003

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    .line 95
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 96
    const/4 v1, 0x4

    .line 95
    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    .line 98
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 99
    const/16 v1, 0x2000

    .line 98
    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    .line 101
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getDisplayColorCalibrationMax()I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    .line 103
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 76
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    goto :goto_0
.end method

.method private declared-synchronized animateDisplayColor([F)V
    .locals 7
    .param p1, "targetColors"    # [F

    .prologue
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v4}, Lmokee/hardware/MKHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v1

    .line 277
    .local v1, "currentInts":[I
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 278
    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 279
    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 280
    const/4 v4, 0x2

    aget v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 282
    .local v0, "currentColors":[F
    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 283
    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 284
    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, p1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    monitor-exit p0

    .line 285
    return-void

    .line 290
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, p1, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 291
    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 292
    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v6, p1, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x443b8000    # 750.0f

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 294
    .local v2, "duration":J
    sget-boolean v4, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 295
    const-string/jumbo v4, "LiveDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "animateDisplayColor current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    const-string/jumbo v6, " targetColors="

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    const-string/jumbo v6, " duration="

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 305
    :cond_2
    new-instance v4, Landroid/animation/FloatArrayEvaluator;

    const/4 v5, 0x3

    new-array v5, v5, [F

    invoke-direct {v4, v5}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    .line 304
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 305
    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 304
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 306
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 307
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/mokee/platform/internal/display/DisplayHardwareController$1;

    invoke-direct {v5, p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController$1;-><init>(Lorg/mokee/platform/internal/display/DisplayHardwareController;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    iget-object v4, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 273
    return-void

    .end local v0    # "currentColors":[F
    .end local v1    # "currentInts":[I
    .end local v2    # "duration":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private copyColors([F[F)V
    .locals 5
    .param p1, "src"    # [F
    .param p2, "dst"    # [F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 497
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-ne v0, v4, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_0

    .line 498
    aget v0, p1, v1

    aput v0, p2, v1

    .line 499
    aget v0, p1, v2

    aput v0, p2, v2

    .line 500
    aget v0, p1, v3

    aput v0, p2, v3

    .line 496
    :cond_0
    return-void
.end method

.method private static getDefaultAdjustment()[F
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private parseColorAdjustment(Ljava/lang/String;[F)Z
    .locals 5
    .param p1, "rgbString"    # Ljava/lang/String;
    .param p2, "dest"    # [F

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 366
    if-nez p1, :cond_1

    .line 368
    .local v0, "adj":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v3, :cond_2

    .line 369
    :cond_0
    return v4

    .line 366
    .end local v0    # "adj":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    .restart local v0    # "adj":[Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_0

    array-length v2, p2

    if-ne v2, v3, :cond_0

    .line 373
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, p2, v3

    .line 374
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 375
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aput v2, p2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    invoke-direct {p0, p2}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v2

    return v2

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "LiveDisplay"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    return v4
.end method

.method private saveColorAdjustmentString([F)V
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 485
    const-string/jumbo v1, "display_color_adjustment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private screenRefresh()V
    .locals 6

    .prologue
    .line 333
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 334
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LiveDisplay"

    const-string/jumbo v4, "Failed to refresh screen"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAutoContrast()V
    .locals 3

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 222
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v0

    .line 221
    :goto_0
    const/16 v2, 0x1000

    invoke-virtual {v1, v2, v0}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    .line 217
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCABCMode()V
    .locals 3

    .prologue
    .line 240
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 244
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v0

    .line 243
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    .line 239
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateColorAdjustment()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 248
    :try_start_0
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    .line 249
    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 254
    .local v0, "rgb":[F
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v1, v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 256
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 257
    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 258
    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 261
    :cond_1
    sget-boolean v1, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 262
    const-string/jumbo v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateColorAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->animateDisplayColor([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 247
    return-void

    .end local v0    # "rgb":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateColorEnhancement()V
    .locals 3

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 233
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v0

    .line 232
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    .line 228
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateHardware()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateCABCMode()V

    .line 174
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateAutoContrast()V

    .line 175
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateColorEnhancement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 171
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateColors([F)Z
    .locals 5
    .param p1, "colors"    # [F

    .prologue
    const/4 v4, 0x3

    .line 352
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eq v1, v4, :cond_1

    .line 353
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 356
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 357
    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 198
    const-string/jumbo v0, "DisplayHardwareController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 205
    const-string/jumbo v0, "  DisplayHardwareController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAdditionalAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    hardware setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v1}, Lmokee/hardware/MKHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_0

    .line 136
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 138
    :cond_0
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_1

    .line 139
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 141
    :cond_1
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_2

    .line 142
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 144
    :cond_2
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_3

    .line 145
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 147
    :cond_3
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    if-eqz v0, :cond_4

    .line 148
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 150
    :cond_4
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez v0, :cond_5

    .line 151
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseDisplayModes:Z

    .line 150
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getColorAdjustment()[F
    .locals 2

    .prologue
    .line 461
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez v1, :cond_0

    .line 462
    invoke-static {}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v1

    return-object v1

    .line 464
    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 465
    .local v0, "cur":[F
    const-string/jumbo v1, "display_color_adjustment"

    invoke-virtual {p0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->parseColorAdjustment(Ljava/lang/String;[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    invoke-static {}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 468
    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    .line 470
    :cond_1
    return-object v0
.end method

.method getDefaultAutoContrast()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    return v0
.end method

.method getDefaultCABC()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultCABC:Z

    return v0
.end method

.method getDefaultColorEnhancement()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    return v0
.end method

.method hasColorAdjustment()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    return v0
.end method

.method isAutoContrastEnabled()Z
    .locals 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_0

    .line 422
    const-string/jumbo v0, "display_auto_contrast"

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCABCEnabled()Z
    .locals 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_0

    .line 435
    const-string/jumbo v0, "display_low_power"

    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultCABC:Z

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isColorEnhancementEnabled()Z
    .locals 2

    .prologue
    .line 447
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_0

    .line 448
    const-string/jumbo v0, "display_color_enhance"

    .line 449
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 448
    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onScreenStateChanged()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 185
    return-void

    .line 188
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 156
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateCABCMode()V

    .line 159
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    :cond_2
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateAutoContrast()V

    .line 162
    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    :cond_4
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateColorEnhancement()V

    .line 165
    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    :cond_6
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 167
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    .line 155
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v1, :cond_1

    .line 117
    sget-object v1, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v1, :cond_2

    .line 120
    sget-object v1, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    iget-boolean v1, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v1, :cond_3

    .line 123
    sget-object v1, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 127
    return-void

    .line 130
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->registerSettings([Landroid/net/Uri;)V

    .line 110
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateHardware()V

    .line 180
    return-void
.end method

.method declared-synchronized setAdditionalAdjustment([F)Z
    .locals 4
    .param p1, "adj"    # [F

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 391
    :try_start_0
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 392
    return v3

    .line 395
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 396
    const-string/jumbo v0, "LiveDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdditionalAdjustment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-direct {p0, p1, v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->copyColors([F[F)V

    .line 402
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    .line 405
    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setAutoContrastEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 426
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_0
    const-string/jumbo v0, "display_auto_contrast"

    invoke-virtual {p0, v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method setCABCEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    return v0

    .line 442
    :cond_0
    const-string/jumbo v0, "display_low_power"

    invoke-virtual {p0, v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method setColorAdjustment([F)Z
    .locals 1
    .param p1, "adj"    # [F

    .prologue
    .line 475
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    .line 479
    const/4 v0, 0x1

    return v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setColorEnhancementEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    return v0

    .line 456
    :cond_0
    const-string/jumbo v0, "display_color_enhance"

    invoke-virtual {p0, v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    const/4 v0, 0x1

    return v0
.end method
