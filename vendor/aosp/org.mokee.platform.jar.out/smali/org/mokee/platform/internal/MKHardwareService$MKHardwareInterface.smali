.class interface abstract Lorg/mokee/platform/internal/MKHardwareService$MKHardwareInterface;
.super Ljava/lang/Object;
.source "MKHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/MKHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MKHardwareInterface"
.end annotation


# virtual methods
.method public abstract get(I)Z
.end method

.method public abstract getColorBalance()I
.end method

.method public abstract getColorBalanceMax()I
.end method

.method public abstract getColorBalanceMin()I
.end method

.method public abstract getCurrentDisplayMode()Lmokee/hardware/DisplayMode;
.end method

.method public abstract getDefaultDisplayMode()Lmokee/hardware/DisplayMode;
.end method

.method public abstract getDefaultPictureAdjustment()Lmokee/hardware/HSIC;
.end method

.method public abstract getDisplayColorCalibration()[I
.end method

.method public abstract getDisplayGammaCalibration(I)[I
.end method

.method public abstract getDisplayModes()[Lmokee/hardware/DisplayMode;
.end method

.method public abstract getLtoDestination()Ljava/lang/String;
.end method

.method public abstract getLtoDownloadInterval()J
.end method

.method public abstract getLtoSource()Ljava/lang/String;
.end method

.method public abstract getNumGammaControls()I
.end method

.method public abstract getPictureAdjustment()Lmokee/hardware/HSIC;
.end method

.method public abstract getPictureAdjustmentRanges()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSupportedFeatures()I
.end method

.method public abstract getTouchscreenGestures()[Lmokee/hardware/TouchscreenGesture;
.end method

.method public abstract getUniqueDeviceId()Ljava/lang/String;
.end method

.method public abstract getVibratorIntensity()[I
.end method

.method public abstract isSunlightEnhancementSelfManaged()Z
.end method

.method public abstract readPersistentBytes(Ljava/lang/String;)[B
.end method

.method public abstract requireAdaptiveBacklightForSunlightEnhancement()Z
.end method

.method public abstract set(IZ)Z
.end method

.method public abstract setColorBalance(I)Z
.end method

.method public abstract setDisplayColorCalibration([I)Z
.end method

.method public abstract setDisplayGammaCalibration(I[I)Z
.end method

.method public abstract setDisplayMode(Lmokee/hardware/DisplayMode;Z)Z
.end method

.method public abstract setPictureAdjustment(Lmokee/hardware/HSIC;)Z
.end method

.method public abstract setTouchscreenGestureEnabled(Lmokee/hardware/TouchscreenGesture;Z)Z
.end method

.method public abstract setVibratorIntensity(I)Z
.end method

.method public abstract writePersistentBytes(Ljava/lang/String;[B)Z
.end method
