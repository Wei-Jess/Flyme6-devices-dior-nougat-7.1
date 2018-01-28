.class public Lorg/mokee/platform/internal/MKStatusBarManagerService;
.super Lorg/mokee/platform/internal/MKSystemService;
.source "MKStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/MKStatusBarManagerService$1;,
        Lorg/mokee/platform/internal/MKStatusBarManagerService$2;,
        Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;,
        Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;
    }
.end annotation


# static fields
.field static final MAX_PACKAGE_TILES:I = 0x4

.field private static final REASON_PACKAGE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MKStatusBarManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field final mCustomTileByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomTileListeners:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mQSTileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field private final mUserProfiles:Lorg/mokee/platform/internal/ManagedServices$UserProfiles;


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileListeners:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    return-object v0
.end method

.method static synthetic -get2(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Lorg/mokee/platform/internal/ManagedServices$UserProfiles;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mUserProfiles:Lorg/mokee/platform/internal/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/MKStatusBarManagerService;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->checkDosProtection(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lmokee/app/StatusBarPanelCustomTile;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;
    .param p2, "listener"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->isVisibleToListener(Lmokee/app/StatusBarPanelCustomTile;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/mokee/platform/internal/MKStatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->enforceBindCustomTileListener()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/mokee/platform/internal/MKStatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->enforceCustomTilePublish()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p7}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->removeCustomTileFromListenerLocked(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/MKSystemService;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lorg/mokee/platform/internal/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lorg/mokee/platform/internal/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mUserProfiles:Lorg/mokee/platform/internal/ManagedServices$UserProfiles;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 78
    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Lorg/mokee/platform/internal/MKStatusBarManagerService$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService$1;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lorg/mokee/platform/internal/MKStatusBarManagerService$2;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService$2;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mService:Landroid/os/IBinder;

    .line 83
    iput-object p1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 389
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 390
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 389
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 391
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 392
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 395
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    const-string/jumbo v5, " which is owned by uid "

    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    :cond_2
    return-void
.end method

.method private checkDosProtection(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 323
    invoke-static {p2}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->isUidSystem(I)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "android"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 326
    .local v3, "isSystemTile":Z
    :goto_0
    if-nez v3, :cond_3

    .line 327
    iget-object v6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "count":I
    :try_start_0
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 332
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    .line 333
    .local v4, "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v7, v4, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v7}, Lmokee/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v4, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v7}, Lmokee/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v7

    if-ne v7, p3, :cond_1

    .line 334
    add-int/lit8 v1, v1, 0x1

    .line 335
    const/4 v7, 0x4

    if-lt v1, v7, :cond_1

    .line 336
    const-string/jumbo v7, "MKStatusBarManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package has already posted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 337
    const-string/jumbo v9, " custom tiles.  Not showing more.  package="

    .line 336
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 338
    return v5

    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "isSystemTile":Z
    .end local v4    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_0
    move v3, v5

    .line 323
    goto :goto_0

    .line 331
    .restart local v0    # "N":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "isSystemTile":Z
    .restart local v4    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_2
    monitor-exit v6

    .line 344
    .end local v0    # "N":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x0

    return v5

    .line 327
    .restart local v1    # "count":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private customTileMatchesUserId(Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;I)Z
    .locals 3
    .param p1, "r"    # Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 420
    if-eq p2, v2, :cond_0

    .line 422
    invoke-virtual {p1}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    invoke-virtual {p1}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceBindCustomTileListener()V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 536
    const-string/jumbo v1, "mokee.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    .line 537
    const-string/jumbo v2, "StatusBarManagerService"

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private enforceCustomTilePublish()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mContext:Landroid/content/Context;

    .line 530
    const-string/jumbo v1, "mokee.permission.PUBLISH_CUSTOM_TILE"

    .line 531
    const-string/jumbo v2, "StatusBarManagerService"

    .line 529
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private static isUidSystem(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 405
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    .line 406
    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v1

    .line 406
    :cond_1
    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVisibleToListener(Lmokee/app/StatusBarPanelCustomTile;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;
    .param p2, "listener"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 542
    invoke-virtual {p1}, Lmokee/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    return v0
.end method

.method private removeCustomTileFromListenerLocked(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move-object v7, p1

    .line 429
    invoke-virtual/range {v0 .. v7}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)V

    .line 428
    return-void
.end method

.method private removeCustomTileLocked(Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;ZI)V
    .locals 4
    .param p1, "r"    # Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 501
    if-eqz p2, :cond_0

    .line 502
    invoke-virtual {p1}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 504
    :try_start_0
    invoke-virtual {p1}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v1

    iget v1, v1, Lmokee/app/CustomTile;->icon:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getCustomTile()Lmokee/app/CustomTile;

    move-result-object v1

    iget-object v1, v1, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 515
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    .line 516
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileListeners:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    iget-object v2, p1, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v1, v2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lmokee/app/StatusBarPanelCustomTile;)V

    .line 519
    :cond_2
    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    iget-object v2, p1, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v2}, Lmokee/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 508
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MKStatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canceled PendingIntent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v3}, Lmokee/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method createCustomTileWithTagInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILmokee/app/CustomTile;[II)V
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "customTile"    # Lmokee/app/CustomTile;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 271
    if-eqz p1, :cond_0

    if-nez p7, :cond_1

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null not allowed: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string/jumbo v3, " id="

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string/jumbo v3, " customTile="

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_1
    const-string/jumbo v6, "createCustomTileWithTag"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v7, p1

    .line 276
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 278
    .local v11, "userId":I
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 281
    .local v10, "user":Landroid/os/UserHandle;
    iget-object v12, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move-object/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lorg/mokee/platform/internal/MKStatusBarManagerService$3;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lmokee/app/CustomTile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;I)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    const/4 v1, 0x0

    aput p6, p8, v1

    .line 269
    return-void
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "org.mokee.statusbar"

    return-object v0
.end method

.method indexOfQsTileLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 351
    iget-object v2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    invoke-virtual {v2}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    return v1

    .line 350
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method indexOfQsTileLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 360
    iget-object v2, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    .line 361
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 362
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 363
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    .line 364
    .local v3, "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    invoke-direct {p0, v3, p4}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->customTileMatchesUserId(Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lmokee/app/StatusBarPanelCustomTile;->getId()I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 362
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    if-nez p2, :cond_3

    .line 368
    iget-object v4, v3, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lmokee/app/StatusBarPanelCustomTile;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 376
    :cond_2
    iget-object v4, v3, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lmokee/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    return v0

    .line 372
    :cond_3
    iget-object v4, v3, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lmokee/app/StatusBarPanelCustomTile;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 380
    .end local v3    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_4
    const/4 v4, -0x1

    return v4
.end method

.method public onStart()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 93
    const-string/jumbo v0, "MKStatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMKStatusBar mkstatusbar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mCustomTileListeners:Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;

    .line 95
    const-string/jumbo v0, "mkstatusbar"

    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 97
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method removeAllCustomTilesInt(Ljava/lang/String;ZIILorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 469
    iget-object v6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 470
    :try_start_0
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 471
    .local v0, "N":I
    const/4 v3, 0x0

    .line 472
    .local v3, "removedTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;>;"
    add-int/lit8 v1, v0, -0x1

    .end local v3    # "removedTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;>;"
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 473
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;

    .line 474
    .local v2, "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    invoke-direct {p0, v2, p3}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->customTileMatchesUserId(Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 472
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {v2}, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->getUserId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    if-eqz p1, :cond_0

    .line 481
    :cond_2
    if-eqz p1, :cond_3

    iget-object v7, v2, Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lmokee/app/StatusBarPanelCustomTile;

    invoke-virtual {v7}, Lmokee/app/StatusBarPanelCustomTile;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 484
    :cond_3
    if-nez v3, :cond_4

    .line 485
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    if-nez p2, :cond_5

    monitor-exit v6

    .line 489
    return v4

    .line 491
    :cond_5
    :try_start_1
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, p4}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->removeCustomTileLocked(Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 469
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lorg/mokee/internal/statusbar/ExternalQuickSettingsRecord;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 494
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    if-eqz v3, :cond_7

    :goto_2
    monitor-exit v6

    return v4

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I
    .param p7, "listener"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 435
    iget-object v6, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/mokee/platform/internal/MKStatusBarManagerService$4;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method
