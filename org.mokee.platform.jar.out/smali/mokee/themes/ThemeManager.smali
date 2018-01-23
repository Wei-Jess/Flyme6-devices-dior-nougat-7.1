.class public Lmokee/themes/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/themes/ThemeManager$1;,
        Lmokee/themes/ThemeManager$2;,
        Lmokee/themes/ThemeManager$ThemeChangeListener;,
        Lmokee/themes/ThemeManager$ThemeProcessingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static sInstance:Lmokee/themes/ThemeManager;

.field private static sService:Lmokee/themes/IThemeService;


# instance fields
.field private mChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmokee/themes/ThemeManager$ThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmokee/themes/ThemeManager$ThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mThemeChangeListener:Lmokee/themes/IThemeChangeListener;

.field private final mThemeProcessingListener:Lmokee/themes/IThemeProcessingListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmokee/themes/ThemeManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lmokee/themes/ThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lmokee/themes/ThemeManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lmokee/themes/ThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    .line 84
    new-instance v0, Lmokee/themes/ThemeManager$1;

    invoke-direct {v0, p0}, Lmokee/themes/ThemeManager$1;-><init>(Lmokee/themes/ThemeManager;)V

    iput-object v0, p0, Lmokee/themes/ThemeManager;->mThemeChangeListener:Lmokee/themes/IThemeChangeListener;

    .line 137
    new-instance v0, Lmokee/themes/ThemeManager$2;

    invoke-direct {v0, p0}, Lmokee/themes/ThemeManager$2;-><init>(Lmokee/themes/ThemeManager;)V

    .line 136
    iput-object v0, p0, Lmokee/themes/ThemeManager;->mThemeProcessingListener:Lmokee/themes/IThemeProcessingListener;

    .line 53
    invoke-static {}, Lmokee/themes/ThemeManager;->getService()Lmokee/themes/IThemeService;

    move-result-object v0

    sput-object v0, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "org.mokee.theme"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to get ThemeManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmokee/themes/ThemeManager;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmokee/themes/ThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v0, Lmokee/themes/ThemeManager;->sInstance:Lmokee/themes/ThemeManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lmokee/themes/ThemeManager;

    invoke-direct {v0, p0}, Lmokee/themes/ThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/themes/ThemeManager;->sInstance:Lmokee/themes/ThemeManager;

    .line 68
    :cond_0
    sget-object v0, Lmokee/themes/ThemeManager;->sInstance:Lmokee/themes/ThemeManager;

    return-object v0
.end method

.method public static getService()Lmokee/themes/IThemeService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v1, "mkthemes"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 78
    invoke-static {v0}, Lmokee/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeService;

    move-result-object v1

    sput-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    .line 79
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    return-object v1

    .line 81
    :cond_1
    return-object v2
.end method

.method private logThemeServiceException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 385
    sget-object v0, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to access ThemeService"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    return-void
.end method


# virtual methods
.method public addClient(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lmokee/themes/ThemeManager;->registerThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V

    .line 169
    return-void
.end method

.method public applyDefaultTheme()V
    .locals 2

    .prologue
    .line 319
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1}, Lmokee/themes/IThemeService;->applyDefaultTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastThemeChangeRequestType()Lmokee/themes/ThemeChangeRequest$RequestType;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 373
    :try_start_0
    sget-object v3, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v3}, Lmokee/themes/IThemeService;->getLastThemeChangeRequestType()I

    move-result v1

    .line 374
    .local v1, "type":I
    if-ltz v1, :cond_0

    invoke-static {}, Lmokee/themes/ThemeChangeRequest$RequestType;->values()[Lmokee/themes/ThemeChangeRequest$RequestType;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 375
    invoke-static {}, Lmokee/themes/ThemeChangeRequest$RequestType;->values()[Lmokee/themes/ThemeChangeRequest$RequestType;

    move-result-object v3

    aget-object v2, v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    return-object v2

    .line 377
    .end local v1    # "type":I
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 381
    return-object v2
.end method

.method public getLastThemeChangeTime()J
    .locals 4

    .prologue
    .line 364
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1}, Lmokee/themes/IThemeService;->getLastThemeChangeTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 368
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 346
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1}, Lmokee/themes/IThemeService;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 350
    const/4 v1, -0x1

    return v1
.end method

.method public isThemeApplying()Z
    .locals 2

    .prologue
    .line 327
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1}, Lmokee/themes/IThemeService;->isThemeApplying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 332
    const/4 v1, 0x0

    return v1
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 337
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1, p1}, Lmokee/themes/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 341
    const/4 v1, 0x0

    return v1
.end method

.method public onClientDestroyed(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lmokee/themes/ThemeManager;->unregisterThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V

    .line 204
    return-void
.end method

.method public onClientPaused(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lmokee/themes/ThemeManager;->unregisterThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V

    .line 187
    return-void
.end method

.method public onClientResumed(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lmokee/themes/ThemeManager;->registerThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V

    .line 195
    return-void
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 355
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1, p1}, Lmokee/themes/IThemeService;->processThemeResources(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 359
    const/4 v1, 0x0

    return v1
.end method

.method public registerProcessingListener(Lmokee/themes/ThemeManager$ThemeProcessingListener;)V
    .locals 4
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeProcessingListener;

    .prologue
    .line 251
    iget-object v2, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    .line 252
    :try_start_0
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 255
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :try_start_2
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    iget-object v3, p0, Lmokee/themes/ThemeManager;->mThemeProcessingListener:Lmokee/themes/IThemeProcessingListener;

    invoke-interface {v1, v3}, Lmokee/themes/IThemeService;->registerThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 250
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v1, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public registerThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 213
    iget-object v2, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    .line 214
    :try_start_0
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 217
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :try_start_2
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    iget-object v3, p0, Lmokee/themes/ThemeManager;->mThemeChangeListener:Lmokee/themes/IThemeChangeListener;

    invoke-interface {v1, v3}, Lmokee/themes/IThemeService;->requestThemeChangeUpdates(Lmokee/themes/IThemeChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 212
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v1, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public removeClient(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lmokee/themes/ThemeManager;->unregisterThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V

    .line 178
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmokee/themes/ThemeManager;->requestThemeChange(Ljava/lang/String;Ljava/util/List;Z)V

    .line 283
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 290
    .local v2, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "component":Ljava/lang/String;
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2, p3}, Lmokee/themes/ThemeManager;->requestThemeChange(Ljava/util/Map;Z)V

    .line 288
    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmokee/themes/ThemeManager;->requestThemeChange(Ljava/util/Map;Z)V

    .line 296
    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;Z)V
    .locals 4
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lmokee/themes/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Lmokee/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 302
    .local v0, "builder":Lmokee/themes/ThemeChangeRequest$Builder;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    .local v1, "component":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    goto :goto_0

    .line 306
    .end local v1    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lmokee/themes/ThemeChangeRequest$Builder;->build()Lmokee/themes/ThemeChangeRequest;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lmokee/themes/ThemeManager;->requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V

    .line 300
    return-void
.end method

.method public requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V
    .locals 2
    .param p1, "request"    # Lmokee/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z

    .prologue
    .line 311
    :try_start_0
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    invoke-interface {v1, p1, p2}, Lmokee/themes/IThemeService;->requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/themes/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterProcessingListener(Lmokee/themes/ThemeManager$ThemeProcessingListener;)V
    .locals 4
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeProcessingListener;

    .prologue
    .line 271
    iget-object v2, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    .line 272
    :try_start_0
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :try_start_1
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    iget-object v3, p0, Lmokee/themes/ThemeManager;->mThemeProcessingListener:Lmokee/themes/IThemeProcessingListener;

    invoke-interface {v1, v3}, Lmokee/themes/IThemeService;->unregisterThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 270
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to unregister listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterThemeChangeListener(Lmokee/themes/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lmokee/themes/ThemeManager$ThemeChangeListener;

    .prologue
    .line 233
    iget-object v2, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lmokee/themes/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :try_start_1
    sget-object v1, Lmokee/themes/ThemeManager;->sService:Lmokee/themes/IThemeService;

    iget-object v3, p0, Lmokee/themes/ThemeManager;->mThemeChangeListener:Lmokee/themes/IThemeChangeListener;

    invoke-interface {v1, v3}, Lmokee/themes/IThemeService;->removeUpdates(Lmokee/themes/IThemeChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 232
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lmokee/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to unregister listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
