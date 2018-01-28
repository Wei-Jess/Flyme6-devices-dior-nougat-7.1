.class public abstract Lmokee/app/BaseLiveLockManagerService;
.super Landroid/app/Service;
.source "BaseLiveLockManagerService.java"

# interfaces
.implements Lmokee/app/ILiveLockScreenManagerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/BaseLiveLockManagerService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmokee/app/ILiveLockScreenChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmokee/app/BaseLiveLockManagerService;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 45
    iput-object v0, p0, Lmokee/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 179
    new-instance v0, Lmokee/app/BaseLiveLockManagerService$1;

    invoke-direct {v0, p0}, Lmokee/app/BaseLiveLockManagerService$1;-><init>(Lmokee/app/BaseLiveLockManagerService;)V

    iput-object v0, p0, Lmokee/app/BaseLiveLockManagerService;->mService:Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method private final hasPrivatePermissions()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    const-string/jumbo v1, "mokee.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS_PRIVATE"

    invoke-virtual {p0, v1}, Lmokee/app/BaseLiveLockManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract cancelLiveLockScreen(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final enforceAccessPermission()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lmokee/app/BaseLiveLockManagerService;->hasPrivatePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    const-string/jumbo v0, "mokee.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS"

    .line 129
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1}, Lmokee/app/BaseLiveLockManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected final enforcePrivateAccessPermission()V
    .locals 2

    .prologue
    .line 139
    const-string/jumbo v0, "mokee.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS_PRIVATE"

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1}, Lmokee/app/BaseLiveLockManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected final enforceSamePackageOrSystem(Ljava/lang/String;Lmokee/app/LiveLockScreenInfo;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    .line 155
    invoke-direct {p0}, Lmokee/app/BaseLiveLockManagerService;->hasPrivatePermissions()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v3, p2, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 165
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 165
    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 167
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    .line 168
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 158
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "uid":I
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Modifying Live lock screen from different packages not allowed.  Calling package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    const-string/jumbo v5, " LLS package: "

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    iget-object v5, p2, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "uid":I
    :cond_3
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 171
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

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    const-string/jumbo v5, " which is owned by uid "

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :cond_4
    return-void
.end method

.method public abstract enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyChangeListeners(Lmokee/app/LiveLockScreenInfo;)V
    .locals 6
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    .line 97
    iget-object v4, p0, Lmokee/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 98
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 99
    iget-object v4, p0, Lmokee/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lmokee/app/ILiveLockScreenChangeListener;

    .line 101
    .local v3, "listener":Lmokee/app/ILiveLockScreenChangeListener;
    :try_start_0
    invoke-interface {v3, p1}, Lmokee/app/ILiveLockScreenChangeListener;->onLiveLockScreenChanged(Lmokee/app/LiveLockScreenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lmokee/app/BaseLiveLockManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to notifiy change listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 106
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lmokee/app/ILiveLockScreenChangeListener;
    :cond_0
    iget-object v4, p0, Lmokee/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 96
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public final registerChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lmokee/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public final unregisterChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lmokee/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public abstract updateDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
