.class public Lmokee/app/LiveLockScreenManager;
.super Ljava/lang/Object;
.source "LiveLockScreenManager.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "mokee.app.LiveLockScreenManagerService"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmokee/app/LiveLockScreenManager;

.field private static sService:Lmokee/app/ILiveLockScreenManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lmokee/app/LiveLockScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmokee/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lmokee/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lmokee/app/LiveLockScreenManager;->getService()Lmokee/app/ILiveLockScreenManager;

    move-result-object v0

    sput-object v0, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "org.mokee.livelockscreen"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lmokee/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to get LiveLockScreenManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmokee/app/LiveLockScreenManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lmokee/app/LiveLockScreenManager;->sInstance:Lmokee/app/LiveLockScreenManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lmokee/app/LiveLockScreenManager;

    invoke-direct {v0, p0}, Lmokee/app/LiveLockScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/app/LiveLockScreenManager;->sInstance:Lmokee/app/LiveLockScreenManager;

    .line 79
    :cond_0
    sget-object v0, Lmokee/app/LiveLockScreenManager;->sInstance:Lmokee/app/LiveLockScreenManager;

    return-object v0
.end method

.method private getService()Lmokee/app/ILiveLockScreenManager;
    .locals 2

    .prologue
    .line 60
    sget-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    if-nez v1, :cond_0

    .line 61
    const-string/jumbo v1, "mklivelockscreen"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0}, Lmokee/app/ILiveLockScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/app/ILiveLockScreenManager;

    move-result-object v1

    sput-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    .line 67
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    return-object v1
.end method

.method private logServiceException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 71
    sget-object v0, Lmokee/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to access LiveLockScreenServiceBroker"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 112
    iget-object v2, p0, Lmokee/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, p1, v3}, Lmokee/app/ILiveLockScreenManager;->cancelLiveLockScreen(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCurrentLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    .locals 3

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "lls":Lmokee/app/LiveLockScreenInfo;
    :try_start_0
    sget-object v2, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-interface {v2}, Lmokee/app/ILiveLockScreenManager;->getCurrentLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    .end local v1    # "lls":Lmokee/app/LiveLockScreenInfo;
    :goto_0
    return-object v1

    .line 157
    .restart local v1    # "lls":Lmokee/app/LiveLockScreenInfo;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDefaultLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    .locals 2

    .prologue
    .line 144
    :try_start_0
    sget-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-interface {v1}, Lmokee/app/ILiveLockScreenManager;->getDefaultLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    .line 149
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 2

    .prologue
    .line 167
    :try_start_0
    sget-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-interface {v1}, Lmokee/app/ILiveLockScreenManager;->getLiveLockScreenEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    .line 172
    const/4 v1, 0x0

    return v1
.end method

.method public setDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    .locals 2
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    .line 129
    :try_start_0
    sget-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-interface {v1, p1}, Lmokee/app/ILiveLockScreenManager;->setDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLiveLockScreenEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    :try_start_0
    sget-object v1, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-interface {v1, p1}, Lmokee/app/ILiveLockScreenManager;->setLiveLockScreenEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public show(ILmokee/app/LiveLockScreenInfo;)Z
    .locals 8
    .param p1, "id"    # I
    .param p2, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 91
    .local v4, "idOut":[I
    iget-object v0, p0, Lmokee/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "pkg":Ljava/lang/String;
    const/4 v7, 0x1

    .line 94
    .local v7, "success":Z
    :try_start_0
    sget-object v0, Lmokee/app/LiveLockScreenManager;->sService:Lmokee/app/ILiveLockScreenManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lmokee/app/ILiveLockScreenManager;->enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V

    .line 95
    const/4 v0, 0x0

    aget v0, v4, v0

    if-eq p1, v0, :cond_0

    .line 96
    sget-object v0, Lmokee/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v7, 0x0

    .line 104
    :cond_0
    :goto_0
    return v7

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v6}, Lmokee/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    .line 101
    const/4 v7, 0x0

    goto :goto_0
.end method
