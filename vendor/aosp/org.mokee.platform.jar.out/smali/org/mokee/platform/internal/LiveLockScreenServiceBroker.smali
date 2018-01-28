.class public Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;
.super Lorg/mokee/platform/internal/BrokerableMKSystemService;
.source "LiveLockScreenServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$1;,
        Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;,
        Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mokee/platform/internal/BrokerableMKSystemService",
        "<",
        "Lmokee/app/ILiveLockScreenManagerProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEPRECATED_THIRD_PARTY_KEYGUARD_PERMISSION:Ljava/lang/String; = "android.permission.THIRD_PARTY_KEYGUARD"

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

.field private mContext:Landroid/content/Context;

.field private mDefaultLlsInfo:Lmokee/app/LiveLockScreenInfo;

.field private mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

.field private final mServiceStubForFailure:Lmokee/app/ILiveLockScreenManagerProvider;


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Lmokee/app/LiveLockScreenInfo;
    .locals 1

    invoke-direct {p0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getDefaultLiveLockScreenInternal()Lmokee/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->enforcePrivateAccessPermission()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;Lmokee/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->setDefaultLiveLockScreenInternal(Lmokee/app/LiveLockScreenInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->setLiveLockScreenEnabledInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 79
    new-instance v0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$1;-><init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V

    .line 78
    iput-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mServiceStubForFailure:Lmokee/app/ILiveLockScreenManagerProvider;

    .line 211
    new-instance v0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;-><init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    .line 186
    iput-object p1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    invoke-virtual {p0, v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->setBrokeredServiceConnection(Lorg/mokee/platform/internal/common/BrokeredServiceConnection;)V

    .line 184
    return-void
.end method

.method private enforcePrivateAccessPermission()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    .line 284
    const-string/jumbo v1, "mokee.permission.LIVE_LOCK_SCREEN_MANAGER_ACCESS_PRIVATE"

    const/4 v2, 0x0

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private getDefaultLiveLockScreenInternal()Lmokee/app/LiveLockScreenInfo;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mDefaultLlsInfo:Lmokee/app/LiveLockScreenInfo;

    return-object v0
.end method

.method private setDefaultLiveLockScreenInternal(Lmokee/app/LiveLockScreenInfo;)V
    .locals 8
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 292
    if-eqz p1, :cond_2

    iget-object v6, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    .line 294
    iget-object v6, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "mokee.permission.THIRD_PARTY_KEYGUARD"

    .line 297
    iget-object v7, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    const-string/jumbo v6, "android.permission.THIRD_PARTY_KEYGUARD"

    .line 299
    iget-object v7, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 298
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 300
    .local v1, "hasThirdPartyKeyguardPermission":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 301
    sget-object v3, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 302
    const-string/jumbo v7, " does not have "

    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 302
    const-string/jumbo v7, "mokee.permission.THIRD_PARTY_KEYGUARD"

    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .end local v1    # "hasThirdPartyKeyguardPermission":Z
    :cond_1
    move v1, v3

    .line 298
    goto :goto_0

    .line 307
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 309
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 310
    const-string/jumbo v7, "default_live_lock_screen_component"

    .line 311
    if-eqz p1, :cond_3

    iget-object v3, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p1, Lmokee/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 309
    :goto_1
    invoke-static {v6, v7, v3}, Lmokee/providers/MKSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    iput-object p1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mDefaultLlsInfo:Lmokee/app/LiveLockScreenInfo;

    .line 320
    :try_start_1
    invoke-virtual {p0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lmokee/app/ILiveLockScreenManagerProvider;

    invoke-interface {v3, p1}, Lmokee/app/ILiveLockScreenManagerProvider;->updateDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :goto_2
    return-void

    .line 313
    :cond_3
    :try_start_2
    const-string/jumbo v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v3

    .line 315
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v3

    .line 321
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private setLiveLockScreenEnabledInternal(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 328
    .local v0, "token":J
    iget-object v2, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 329
    const-string/jumbo v4, "live_lock_screen_enabled"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 328
    :goto_0
    invoke-static {v3, v4, v2}, Lmokee/providers/MKSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getComponentFilteringPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "mokee.permission.LIVE_LOCK_SCREEN_MANAGER_PROVIDER"

    return-object v0
.end method

.method public bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getDefaultImplementation()Lmokee/app/ILiveLockScreenManagerProvider;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultImplementation()Lmokee/app/ILiveLockScreenManagerProvider;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mServiceStubForFailure:Lmokee/app/ILiveLockScreenManagerProvider;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string/jumbo v0, "org.mokee.livelockscreen"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/app/ILiveLockScreenManagerProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/app/ILiveLockScreenManagerProvider;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 203
    invoke-static {p1}, Lmokee/app/ILiveLockScreenManagerProvider$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/app/ILiveLockScreenManagerProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 247
    iget-object v5, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 248
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "mokee.app.LiveLockScreenManagerService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 251
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 252
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 257
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 262
    const/16 v1, 0x258

    if-ne p1, v1, :cond_0

    .line 266
    iget-object v1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 267
    const-string/jumbo v2, "default_live_lock_screen_component"

    .line 266
    invoke-static {v1, v2}, Lmokee/providers/MKSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "defComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Lmokee/app/LiveLockScreenInfo$Builder;

    invoke-direct {v1}, Lmokee/app/LiveLockScreenInfo$Builder;-><init>()V

    .line 270
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Lmokee/app/LiveLockScreenInfo$Builder;->setComponent(Landroid/content/ComponentName;)Lmokee/app/LiveLockScreenInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmokee/app/LiveLockScreenInfo$Builder;->build()Lmokee/app/LiveLockScreenInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->mDefaultLlsInfo:Lmokee/app/LiveLockScreenInfo;

    .line 274
    .end local v0    # "defComponent":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->onBootPhase(I)V

    .line 261
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 198
    const-string/jumbo v0, "mklivelockscreen"

    new-instance v1, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 196
    return-void
.end method
