.class public Lmokee/hardware/LiveDisplayManager;
.super Ljava/lang/Object;
.source "LiveDisplayManager.java"


# static fields
.field public static final ADJUSTMENT_CONTRAST:I = 0x3

.field public static final ADJUSTMENT_HUE:I = 0x0

.field public static final ADJUSTMENT_INTENSITY:I = 0x2

.field public static final ADJUSTMENT_SATURATION:I = 0x1

.field public static final FEATURE_AUTO_CONTRAST:I = 0xb

.field public static final FEATURE_CABC:I = 0xa

.field public static final FEATURE_COLOR_ADJUSTMENT:I = 0xd

.field public static final FEATURE_COLOR_BALANCE:I = 0x10

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0xc

.field public static final FEATURE_DISPLAY_MODES:I = 0xf

.field public static final FEATURE_FIRST:I = 0xa

.field public static final FEATURE_LAST:I = 0x11

.field public static final FEATURE_MANAGED_OUTDOOR_MODE:I = 0xe

.field public static final FEATURE_PICTURE_ADJUSTMENT:I = 0x11

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_DAY:I = 0x4

.field public static final MODE_FIRST:I = 0x0

.field public static final MODE_LAST:I = 0x4

.field public static final MODE_NIGHT:I = 0x1

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_OUTDOOR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field private static sInstance:Lmokee/hardware/LiveDisplayManager;

.field private static sService:Lmokee/hardware/ILiveDisplayService;


# instance fields
.field private final mConfig:Lmokee/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 148
    iput-object v0, p0, Lmokee/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    .line 152
    :goto_0
    invoke-static {}, Lmokee/hardware/LiveDisplayManager;->getService()Lmokee/hardware/ILiveDisplayService;

    move-result-object v2

    sput-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 155
    const-string/jumbo v3, "org.mokee.livedisplay"

    .line 154
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :goto_1
    :try_start_0
    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->getConfig()Lmokee/hardware/LiveDisplayConfig;

    move-result-object v2

    iput-object v2, p0, Lmokee/hardware/LiveDisplayManager;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    .line 163
    iget-object v2, p0, Lmokee/hardware/LiveDisplayManager;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    if-nez v2, :cond_2

    .line 164
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to get LiveDisplay configuration!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to fetch LiveDisplay configuration!"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 150
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iput-object p1, p0, Lmokee/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 156
    :cond_1
    const-string/jumbo v2, "LiveDisplay"

    const-string/jumbo v3, "Unable to get LiveDisplayService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    :cond_2
    return-void
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    if-nez v0, :cond_0

    .line 201
    const-string/jumbo v0, "LiveDisplay"

    const-string/jumbo v1, "not connected to MKHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmokee/hardware/LiveDisplayManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lmokee/hardware/LiveDisplayManager;

    monitor-enter v1

    .line 177
    :try_start_0
    sget-object v0, Lmokee/hardware/LiveDisplayManager;->sInstance:Lmokee/hardware/LiveDisplayManager;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lmokee/hardware/LiveDisplayManager;

    invoke-direct {v0, p0}, Lmokee/hardware/LiveDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/hardware/LiveDisplayManager;->sInstance:Lmokee/hardware/LiveDisplayManager;

    .line 180
    :cond_0
    sget-object v0, Lmokee/hardware/LiveDisplayManager;->sInstance:Lmokee/hardware/LiveDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService()Lmokee/hardware/ILiveDisplayService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    return-object v1

    .line 188
    :cond_0
    const-string/jumbo v1, "mklivedisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 189
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 190
    invoke-static {v0}, Lmokee/hardware/ILiveDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/hardware/ILiveDisplayService;

    move-result-object v1

    sput-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    .line 191
    sget-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    return-object v1

    .line 193
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getColorAdjustment()[F
    .locals 2

    .prologue
    .line 416
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    sget-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lmokee/hardware/ILiveDisplayService;->getColorAdjustment()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 419
    :catch_0
    move-exception v0

    .line 421
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getConfig()Lmokee/hardware/LiveDisplayConfig;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmokee/hardware/LiveDisplayManager;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 331
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->getDayColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getDefaultPictureAdjustment()Lmokee/hardware/HSIC;
    .locals 2

    .prologue
    .line 479
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    sget-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lmokee/hardware/ILiveDisplayService;->getDefaultPictureAdjustment()Lmokee/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 482
    :catch_0
    move-exception v0

    .line 484
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getNightColorTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 358
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->getNightColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getPictureAdjustment()Lmokee/hardware/HSIC;
    .locals 2

    .prologue
    .line 450
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    sget-object v1, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lmokee/hardware/ILiveDisplayService;->getPictureAdjustment()Lmokee/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 453
    :catch_0
    move-exception v0

    .line 455
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAutoContrastEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 250
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->isAutoContrastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 386
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->isAutomaticOutdoorModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isCABCEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 277
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->isCABCEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isColorEnhancementEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2}, Lmokee/hardware/ILiveDisplayService;->isColorEnhancementEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 264
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setAutoContrastEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 401
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setAutomaticOutdoorModeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setCABCEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setCABCEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setColorAdjustment([F)Z
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    const/4 v1, 0x0

    .line 437
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setColorAdjustment([F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 318
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setColorEnhancementEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setDayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    const/4 v1, 0x0

    .line 345
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setDayColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setNightColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    const/4 v1, 0x0

    .line 372
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setNightColorTemperature(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setPictureAdjustment(Lmokee/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lmokee/hardware/HSIC;

    .prologue
    const/4 v1, 0x0

    .line 466
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/LiveDisplayManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lmokee/hardware/LiveDisplayManager;->sService:Lmokee/hardware/ILiveDisplayService;

    invoke-interface {v2, p1}, Lmokee/hardware/ILiveDisplayService;->setPictureAdjustment(Lmokee/hardware/HSIC;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .line 467
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
