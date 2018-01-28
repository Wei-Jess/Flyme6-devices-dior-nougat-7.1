.class public Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;
.super Lorg/mokee/platform/internal/BrokerableMKSystemService;
.source "IconCacheManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$1;,
        Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$2;,
        Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$BinderService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mokee/platform/internal/BrokerableMKSystemService",
        "<",
        "Lorg/mokee/internal/themes/IIconCacheManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

.field private final mServiceStubForFailure:Lorg/mokee/internal/themes/IIconCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.mokee.themeservice"

    .line 41
    const-string/jumbo v2, "org.mokee.themeservice.IconCacheManagerService"

    .line 40
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sput-object v0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$1;-><init>(Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->mServiceStubForFailure:Lorg/mokee/internal/themes/IIconCacheManager;

    .line 50
    new-instance v0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$2;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$2;-><init>(Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    .line 69
    iget-object v0, p0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->mServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    invoke-virtual {p0, v0}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->setBrokeredServiceConnection(Lorg/mokee/platform/internal/common/BrokeredServiceConnection;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected getComponentFilteringPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "mokee.permission.ACCESS_THEME_MANAGER"

    return-object v0
.end method

.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->getDefaultImplementation()Lorg/mokee/internal/themes/IIconCacheManager;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lorg/mokee/internal/themes/IIconCacheManager;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->mServiceStubForFailure:Lorg/mokee/internal/themes/IIconCacheManager;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "org.mokee.theme"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lorg/mokee/internal/themes/IIconCacheManager;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lorg/mokee/internal/themes/IIconCacheManager;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-static {p1}, Lorg/mokee/internal/themes/IIconCacheManager$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mokee/internal/themes/IIconCacheManager;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 94
    const-string/jumbo v0, "mkiconcache"

    new-instance v1, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;Lorg/mokee/platform/internal/IconCacheManagerServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/IconCacheManagerServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 93
    return-void
.end method
