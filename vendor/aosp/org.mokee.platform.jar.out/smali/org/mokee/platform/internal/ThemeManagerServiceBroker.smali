.class public Lorg/mokee/platform/internal/ThemeManagerServiceBroker;
.super Lorg/mokee/platform/internal/BrokerableMKSystemService;
.source "ThemeManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/ThemeManagerServiceBroker$1;,
        Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;,
        Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mokee/platform/internal/BrokerableMKSystemService",
        "<",
        "Lmokee/themes/IThemeService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmokee/themes/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mProcessingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmokee/themes/IThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

.field private final mServiceStubForFailure:Lmokee/themes/IThemeService;


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get1(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->enforcePermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.mokee.themeservice"

    .line 59
    const-string/jumbo v2, "org.mokee.themeservice.ThemeManagerService"

    .line 58
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object v0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 62
    iput-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 65
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 64
    iput-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mProcessingListeners:Landroid/os/RemoteCallbackList;

    .line 69
    new-instance v0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$1;-><init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mServiceStubForFailure:Lmokee/themes/IThemeService;

    .line 276
    new-instance v0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$2;-><init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    .line 223
    iput-object p1, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mContext:Landroid/content/Context;

    .line 224
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    invoke-virtual {p0, v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->setBrokeredServiceConnection(Lorg/mokee/platform/internal/common/BrokeredServiceConnection;)V

    .line 221
    return-void
.end method

.method private static createDirIfNotExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 368
    const/4 v1, 0x1

    return v1

    .line 371
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mokee.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private isUserWritable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 354
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 355
    .local v1, "stat":Landroid/system/StructStat;
    iget v3, v1, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 356
    .end local v1    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/system/ErrnoException;
    sget-object v3, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v2
.end method

.method private migrateFilePermissions()V
    .locals 5

    .prologue
    .line 334
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/system/theme"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 335
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 336
    .local v0, "file":Ljava/io/File;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->setAllUsersWritable(Ljava/io/File;Z)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private setAllUsersWritable(Ljava/io/File;Z)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "recursive"    # Z

    .prologue
    const/4 v3, 0x0

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 342
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 343
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 344
    .local v0, "childFile":Ljava/io/File;
    invoke-direct {p0, v0, p2}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->setAllUsersWritable(Ljava/io/File;Z)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "childFile":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->isUserWritable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 340
    :cond_1
    return-void
.end method

.method private shouldMigrateFilePermissions()Z
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lorg/mokee/internal/util/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->isUserWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getComponentFilteringPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string/jumbo v0, "mokee.permission.ACCESS_THEME_MANAGER"

    return-object v0
.end method

.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getDefaultImplementation()Lmokee/themes/IThemeService;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lmokee/themes/IThemeService;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->mServiceStubForFailure:Lmokee/themes/IThemeService;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string/jumbo v0, "org.mokee.theme"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeService;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 229
    invoke-static {p1}, Lmokee/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 260
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 262
    const-string/jumbo v0, "/data/system/theme"

    invoke-static {v0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "/data/system/theme"

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z

    .line 267
    :cond_0
    invoke-direct {p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->shouldMigrateFilePermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->migrateFilePermissions()V

    .line 273
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->onBootPhase(I)V

    .line 259
    return-void

    .line 270
    :cond_2
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->tryConnecting()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 250
    const-string/jumbo v0, "mkthemes"

    new-instance v1, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/ThemeManagerServiceBroker;Lorg/mokee/platform/internal/ThemeManagerServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/ThemeManagerServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 248
    return-void
.end method
