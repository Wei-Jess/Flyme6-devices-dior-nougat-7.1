.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$LegacyRequest;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$NoPreloadHolder;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$OnStartTetheringCallback;,
        Landroid/net/ConnectivityManager$PacketKeepalive;,
        Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_SIGN_IN:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL"

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_PROMPT_LOST_VALIDATION:Ljava/lang/String; = "android.net.conn.PROMPT_LOST_VALIDATION"

.field public static final ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.conn.PROMPT_UNVALIDATED"

.field public static final ACTION_RESTRICT_BACKGROUND_CHANGED:Ljava/lang/String; = "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final BASE:I = 0x80000

.field public static final CALLBACK_AVAILABLE:I = 0x80002

.field public static final CALLBACK_CAP_CHANGED:I = 0x80006

.field public static final CALLBACK_EXIT:I = 0x80009

.field public static final CALLBACK_IP_CHANGED:I = 0x80007

.field public static final CALLBACK_LOSING:I = 0x80003

.field public static final CALLBACK_LOST:I = 0x80004

.field public static final CALLBACK_PRECHECK:I = 0x80001

.field public static final CALLBACK_RELEASED:I = 0x80008

.field public static final CALLBACK_RESUMED:I = 0x8000c

.field public static final CALLBACK_SUSPENDED:I = 0x8000b

.field public static final CALLBACK_UNAVAIL:I = 0x80005

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_SUPL:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x8000a

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final EXTRA_CAPTIVE_PORTAL_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_URL"

.field public static final EXTRA_CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK:Ljava/lang/String; = "android.net.extra.NETWORK"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "android.net.extra.NETWORK_REQUEST"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_PROVISION_CALLBACK:Ljava/lang/String; = "extraProvisionCallback"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REM_TETHER_TYPE:Ljava/lang/String; = "extraRemTetherType"

.field public static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field public static final EXTRA_SET_ALARM:Ljava/lang/String; = "extraSetAlarm"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_REQUEST_TIMEOUT_MS:I = 0x5b8d80

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_RADIO_TYPE:I = 0x11

.field public static final NETID_UNSET:I = 0x0

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHERING_BLUETOOTH:I = 0x2

.field public static final TETHERING_INVALID:I = -0x1

.field public static final TETHERING_USB:I = 0x1

.field public static final TETHERING_WIFI:I = 0x0

.field public static final TETHER_CONNECT_STATE_CHANGED:Ljava/lang/String; = "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_PROVISION_FAILED:I = 0xb

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PROXY:I = 0x10

.field public static final TYPE_VPN:I = 0x11

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field static sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field static final sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sInstance:Landroid/net/ConnectivityManager;

.field private static sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field static final sNetworkCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNPManager:Landroid/net/INetworkPolicyManager;

.field private final mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static synthetic -get0(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;
    .locals 1

    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .locals 0
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1411
    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    .line 2869
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2868
    sput-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    .line 2870
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2871
    const/4 v0, 0x0

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1778
    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    .line 1847
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 1848
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 1849
    sput-object p0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    .line 1846
    return-void
.end method

.method public static final checkChangePermission(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1862
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1863
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1864
    const/4 v2, 0x0

    .line 1863
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private checkLegacyRoutingApiAccess()V
    .locals 2

    .prologue
    .line 3419
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.permission.INJECT_OMADM_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3421
    return-void

    .line 3424
    :cond_0
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    .line 3418
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3091
    if-nez p1, :cond_0

    .line 3092
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "PendingIntent cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3090
    :cond_0
    return-void
.end method

.method private decCallbackHandlerRefCount()V
    .locals 3

    .prologue
    .line 2860
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 2861
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2862
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v2, 0x80009

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2863
    const/4 v0, 0x0

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2859
    return-void

    .line 2860
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final enforceChangePermission(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1869
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1870
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1871
    const/4 v2, 0x1

    .line 1870
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 1868
    return-void
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1876
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1877
    const v2, 0x107001e

    .line 1876
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 1877
    const/4 v2, 0x2

    .line 1876
    if-ne v1, v2, :cond_0

    .line 1881
    const-string/jumbo v1, "android.permission.TETHER_PRIVILEGED"

    const-string/jumbo v2, "ConnectivityService"

    .line 1880
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :goto_0
    return-void

    .line 1883
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1884
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1885
    const/4 v2, 0x1

    .line 1884
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    goto :goto_0
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .locals 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    .prologue
    .line 1429
    const/4 v1, -0x1

    .line 1430
    .local v1, "ourSeqNum":I
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    .line 1431
    :try_start_0
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v0, :cond_0

    monitor-exit v3

    return-void

    .line 1433
    :cond_0
    :try_start_1
    iget v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1434
    iget v2, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    if-ne v2, p2, :cond_1

    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 1436
    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expireRequest with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    return-void

    .line 1430
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v3, 0x0

    .line 1415
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1416
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1417
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 1419
    return-object v3

    .line 1415
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1854
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static getInstance()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1904
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1905
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No ConnectivityManager yet constructed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1907
    :cond_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static getInstanceOrNull()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 1895
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 1767
    monitor-enter p0

    .line 1768
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_0

    .line 1769
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1771
    :cond_0
    :try_start_1
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1772
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    .line 1773
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1767
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;
    .locals 1

    .prologue
    .line 3488
    monitor-enter p0

    .line 3489
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    if-eqz v0, :cond_0

    .line 3490
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3493
    :cond_0
    :try_start_1
    const-string/jumbo v0, "netpolicy"

    .line 3492
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    .line 3494
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 644
    packed-switch p0, :pswitch_data_0

    .line 682
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 646
    :pswitch_0
    const-string/jumbo v0, "MOBILE"

    return-object v0

    .line 648
    :pswitch_1
    const-string/jumbo v0, "WIFI"

    return-object v0

    .line 650
    :pswitch_2
    const-string/jumbo v0, "MOBILE_MMS"

    return-object v0

    .line 652
    :pswitch_3
    const-string/jumbo v0, "MOBILE_SUPL"

    return-object v0

    .line 654
    :pswitch_4
    const-string/jumbo v0, "MOBILE_DUN"

    return-object v0

    .line 656
    :pswitch_5
    const-string/jumbo v0, "MOBILE_HIPRI"

    return-object v0

    .line 658
    :pswitch_6
    const-string/jumbo v0, "WIMAX"

    return-object v0

    .line 660
    :pswitch_7
    const-string/jumbo v0, "BLUETOOTH"

    return-object v0

    .line 662
    :pswitch_8
    const-string/jumbo v0, "DUMMY"

    return-object v0

    .line 664
    :pswitch_9
    const-string/jumbo v0, "ETHERNET"

    return-object v0

    .line 666
    :pswitch_a
    const-string/jumbo v0, "MOBILE_FOTA"

    return-object v0

    .line 668
    :pswitch_b
    const-string/jumbo v0, "MOBILE_IMS"

    return-object v0

    .line 670
    :pswitch_c
    const-string/jumbo v0, "MOBILE_CBS"

    return-object v0

    .line 672
    :pswitch_d
    const-string/jumbo v0, "WIFI_P2P"

    return-object v0

    .line 674
    :pswitch_e
    const-string/jumbo v0, "MOBILE_IA"

    return-object v0

    .line 676
    :pswitch_f
    const-string/jumbo v0, "MOBILE_EMERGENCY"

    return-object v0

    .line 678
    :pswitch_10
    const-string/jumbo v0, "PROXY"

    return-object v0

    .line 680
    :pswitch_11
    const-string/jumbo v0, "VPN"

    return-object v0

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getProcessDefaultNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    .line 3394
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v0

    .line 3395
    .local v0, "netId":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 3396
    :cond_0
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    return-object v1
.end method

.method private incCallbackHandlerRefCount()V
    .locals 8

    .prologue
    .line 2848
    sget-object v7, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2849
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2851
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v0, "ConnectivityManager"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2852
    .local v6, "callbackThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 2853
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 2854
    sget-object v3, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    sget-object v4, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, p0

    move-object v5, p0

    .line 2853
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "callbackThread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v7

    .line 2847
    return-void

    .line 2848
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 7
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1301
    if-nez p1, :cond_0

    .line 1302
    return v4

    .line 1305
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1306
    return v4

    .line 1310
    :cond_1
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1314
    return v4

    .line 1317
    :cond_2
    const/4 v2, 0x0

    .line 1318
    .local v2, "type":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1320
    .local v0, "result":I
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1321
    const-string/jumbo v2, "enableCBS"

    .line 1322
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xc

    .line 1344
    .end local v2    # "type":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v2, :cond_9

    .line 1345
    invoke-direct {p0, v5, v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1346
    .local v1, "testCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1347
    return v0

    .line 1323
    .end local v1    # "testCap":Landroid/net/NetworkCapabilities;
    .local v2, "type":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1324
    const-string/jumbo v2, "enableIMS"

    .line 1325
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xb

    goto :goto_0

    .line 1326
    .local v2, "type":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1327
    const-string/jumbo v2, "enableFOTA"

    .line 1328
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xa

    goto :goto_0

    .line 1329
    .local v2, "type":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1330
    const-string/jumbo v2, "enableDUN"

    .line 1331
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x4

    goto :goto_0

    .line 1332
    .local v2, "type":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1333
    const-string/jumbo v2, "enableSUPL"

    .line 1334
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x3

    goto :goto_0

    .line 1340
    .local v2, "type":Ljava/lang/String;
    :cond_8
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1341
    const-string/jumbo v2, "enableHIPRI"

    .line 1342
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x5

    goto :goto_0

    .line 1350
    .end local v2    # "type":Ljava/lang/String;
    :cond_9
    return v4
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 694
    packed-switch p0, :pswitch_data_0

    .line 707
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 705
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 2
    .param p0, "networkType"    # I

    .prologue
    const/4 v0, 0x0

    .line 632
    if-ltz p0, :cond_0

    const/16 v1, 0x11

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNetworkTypeWifi(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 717
    sparse-switch p0, :sswitch_data_0

    .line 722
    const/4 v0, 0x0

    return v0

    .line 720
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 717
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 1354
    if-nez p1, :cond_0

    return v1

    .line 1355
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    const/16 v0, 0xc

    return v0

    .line 1358
    :cond_1
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    const/16 v0, 0xb

    return v0

    .line 1361
    :cond_2
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    const/16 v0, 0xa

    return v0

    .line 1364
    :cond_3
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1365
    return v4

    .line 1367
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1368
    return v3

    .line 1370
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1371
    return v2

    .line 1373
    :cond_6
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1374
    return v5

    .line 1376
    :cond_7
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1377
    const/16 v0, 0xd

    return v0

    .line 1379
    :cond_8
    return v1
.end method

.method private networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1240
    if-nez p1, :cond_8

    .line 1241
    const/4 v0, -0x1

    .line 1242
    .local v0, "cap":I
    const-string/jumbo v2, "enableMMS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1243
    const/4 v0, 0x0

    .line 1259
    :goto_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1260
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1261
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 1262
    return-object v1

    .line 1244
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_0
    const-string/jumbo v2, "enableSUPL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    const/4 v0, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    const-string/jumbo v2, "enableDUN"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "enableDUNAlways"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1247
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1248
    :cond_3
    const-string/jumbo v2, "enableHIPRI"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1249
    const/16 v0, 0xc

    goto :goto_0

    .line 1250
    :cond_4
    const-string/jumbo v2, "enableFOTA"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1251
    const/4 v0, 0x3

    goto :goto_0

    .line 1252
    :cond_5
    const-string/jumbo v2, "enableIMS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1253
    const/4 v0, 0x4

    goto :goto_0

    .line 1254
    :cond_6
    const-string/jumbo v2, "enableCBS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1255
    const/4 v0, 0x5

    goto :goto_0

    .line 1257
    :cond_7
    return-object v5

    .line 1263
    .end local v0    # "cap":I
    :cond_8
    if-ne p1, v4, :cond_9

    .line 1264
    const-string/jumbo v2, "p2p"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1265
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1266
    .restart local v1    # "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1267
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1268
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 1269
    return-object v1

    .line 1272
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_9
    return-object v5
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1469
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 1470
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v2

    .line 1472
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1469
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1473
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1474
    invoke-static {v0}, Landroid/net/ConnectivityManager$LegacyRequest;->-wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1475
    const/4 v1, 0x1

    return v1
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    .prologue
    .line 1423
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1424
    const-string/jumbo v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renewing request to seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1422
    return-void
.end method

.method private requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 10
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1440
    const/4 v6, -0x1

    .line 1441
    .local v6, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    .line 1443
    .local v5, "type":I
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1447
    new-instance v8, Landroid/net/ConnectivityManager$LegacyRequest;

    invoke-direct {v8, v9}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1448
    .local v8, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1449
    iput v6, v8, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 1450
    iput v3, v8, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1451
    iget-object v2, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1452
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    .line 1451
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 1453
    iget-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_0

    return-object v9

    .line 1444
    .end local v8    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catch_0
    move-exception v7

    .line 1445
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1454
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v8    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-direct {p0, p1, v0, v6}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1456
    iget-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method private sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .locals 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "seqNum"    # I
    .param p3, "delay"    # I

    .prologue
    const/4 v4, 0x0

    .line 1460
    if-ltz p3, :cond_0

    .line 1461
    const-string/jumbo v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending expire msg with seqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    const v2, 0x8000a

    invoke-virtual {v1, v2, p2, v4, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1463
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1459
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;
    .locals 8
    .param p1, "need"    # Landroid/net/NetworkCapabilities;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutSec"    # I
    .param p4, "action"    # I
    .param p5, "legacyType"    # I

    .prologue
    .line 2879
    if-nez p2, :cond_0

    .line 2880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null NetworkCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2882
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    .line 2883
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null NetworkCapabilities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2886
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->incCallbackHandlerRefCount()V

    .line 2887
    sget-object v7, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2888
    const/4 v0, 0x1

    if-ne p4, v0, :cond_4

    .line 2889
    :try_start_1
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 2890
    new-instance v1, Landroid/os/Messenger;

    sget-object v2, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 2889
    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    .line 2895
    :goto_0
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2896
    sget-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2902
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->decCallbackHandlerRefCount()V

    .line 2903
    :cond_3
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0

    .line 2892
    :cond_4
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 2893
    new-instance v2, Landroid/os/Messenger;

    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 2892
    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2887
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2899
    :catch_0
    move-exception v6

    .line 2900
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .locals 5
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x1

    .line 3348
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 3349
    .local v1, "netId":I
    :goto_0
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3350
    return v4

    .line 3348
    .end local v1    # "netId":I
    :cond_0
    iget v1, p0, Landroid/net/Network;->netId:I

    .restart local v1    # "netId":I
    goto :goto_0

    .line 3352
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3356
    :try_start_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstance()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3362
    :goto_1
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 3365
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 3366
    return v4

    .line 3357
    :catch_0
    move-exception v0

    .line 3359
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ConnectivityManager"

    const-string/jumbo v3, "Can\'t set proxy properties"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3368
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .locals 1
    .param p0, "network"    # Landroid/net/Network;

    .prologue
    .line 3439
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 3438
    :goto_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    move-result v0

    return v0

    .line 3439
    :cond_0
    iget v0, p0, Landroid/net/Network;->netId:I

    goto :goto_0
.end method

.method private unsupportedStartingFrom(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 3400
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3403
    return-void

    .line 3406
    :cond_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, p1, :cond_1

    .line 3407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This method is not supported in target SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and above"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3407
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3399
    :cond_1
    return-void
.end method

.method private static final whatToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "what"    # I

    .prologue
    .line 3539
    sget-object v0, Landroid/net/ConnectivityManager$NoPreloadHolder;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .prologue
    .line 1794
    new-instance v1, Landroid/net/ConnectivityManager$1;

    invoke-direct {v1, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 1802
    .local v1, "rl":Landroid/os/INetworkActivityListener;
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 1803
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    return-void

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3323
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 3
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 2493
    const/4 v1, -0x1

    .line 2495
    .local v1, "timeOutMs":I
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2499
    return v1

    .line 2496
    :catch_0
    move-exception v0

    .line 2497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public factoryReset()V
    .locals 2

    .prologue
    .line 3296
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3294
    return-void

    .line 3297
    :catch_0
    move-exception v0

    .line 3298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 1025
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    .line 791
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkForUid(I)Landroid/net/Network;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .prologue
    .line 818
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .prologue
    .line 887
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    .prologue
    .line 1721
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 957
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 2

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundNetworkForProcess()Landroid/net/Network;
    .locals 1

    .prologue
    .line 3381
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1141
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getCaptivePortalServerUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1006
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 2418
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    .prologue
    .line 2380
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2381
    :catch_0
    move-exception v0

    .line 2382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2286
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2287
    :catch_0
    move-exception v0

    .line 2288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1049
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1066
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMobileDataEnabled()Z
    .locals 8

    .prologue
    .line 1732
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1733
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1735
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1736
    .local v2, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 1737
    .local v4, "subId":I
    const-string/jumbo v5, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMobileDataEnabled()+ subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    move-result v3

    .line 1739
    .local v3, "retVal":Z
    const-string/jumbo v5, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMobileDataEnabled()- subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1740
    const-string/jumbo v7, " retVal="

    .line 1739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    return v3

    .line 1742
    .end local v2    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "retVal":Z
    .end local v4    # "subId":I
    :catch_0
    move-exception v1

    .line 1743
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1746
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v5, "ConnectivityManager"

    const-string/jumbo v6, "getMobileDataEnabled()- remote exception retVal=false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/4 v5, 0x0

    return v5
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2508
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2509
    :catch_0
    move-exception v0

    .line 2510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1103
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 930
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .prologue
    .line 936
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkPreference()I
    .locals 1

    .prologue
    .line 754
    const/4 v0, -0x1

    return v0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2402
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRestrictBackgroundStatus()I
    .locals 2

    .prologue
    .line 3508
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundByCaller()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3509
    :catch_0
    move-exception v0

    .line 3510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherConnectedSta()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2241
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherConnectedSta()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2242
    :catch_0
    move-exception v0

    .line 2243
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2202
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1922
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2162
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2163
    :catch_0
    move-exception v0

    .line 2164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2182
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1976
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1939
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1940
    :catch_0
    move-exception v0

    .line 1941
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1962
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 2459
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2460
    :catch_0
    move-exception v0

    .line 2461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDefaultNetworkActive()Z
    .locals 2

    .prologue
    .line 1837
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isNetworkActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 2438
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2439
    :catch_0
    move-exception v0

    .line 2440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTetheringSupported()Z
    .locals 2

    .prologue
    .line 2054
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 3169
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 3161
    return-void
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # I
    .param p6, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 2575
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 2576
    :catch_0
    move-exception v7

    .line 2577
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3143
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 3145
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3142
    return-void

    .line 3146
    :catch_0
    move-exception v0

    .line 3147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 3108
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 3107
    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2552
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    return-void

    .line 2553
    :catch_0
    move-exception v0

    .line 2554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3082
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 3084
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    return-void

    .line 3085
    :catch_0
    move-exception v0

    .line 3086
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 5
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .prologue
    .line 1816
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkActivityListener;

    .line 1817
    .local v1, "rl":Landroid/os/INetworkActivityListener;
    if-nez v1, :cond_0

    .line 1818
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Listener not registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1821
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1815
    return-void

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2325
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 2326
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    return-void

    .line 2327
    :catch_0
    move-exception v0

    .line 2328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportInetCondition(II)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 2304
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    return-void

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .prologue
    .line 2345
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2343
    return-void

    .line 2346
    :catch_0
    move-exception v0

    .line 2347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3186
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3187
    :catch_0
    move-exception v0

    .line 3188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestLinkProperties(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 1086
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->requestLinkProperties(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3061
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 3063
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3060
    return-void

    .line 3064
    :catch_0
    move-exception v0

    .line 3065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 2954
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 2953
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    .line 2952
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    .prologue
    .line 2985
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 2984
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    .line 2983
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I
    .param p4, "legacyType"    # I

    .prologue
    .line 2919
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    .line 2918
    return-void
.end method

.method public requestNetworkCapabilities(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 1123
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->requestNetworkCapabilities(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    .prologue
    .line 1641
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1663
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1665
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 3247
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    return-void

    .line 3248
    :catch_0
    move-exception v0

    .line 3249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAirplaneMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2543
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    return-void

    .line 2544
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z

    .prologue
    .line 844
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3268
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    return-void

    .line 3269
    :catch_0
    move-exception v0

    .line 3270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1705
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "p"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2365
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2363
    return-void

    .line 2366
    :catch_0
    move-exception v0

    .line 2367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkPreference(I)V
    .locals 0
    .param p1, "preference"    # I

    .prologue
    .line 738
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2526
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2524
    return-void

    .line 2527
    :catch_0
    move-exception v0

    .line 2528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2227
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3284
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3282
    return-void

    .line 3285
    :catch_0
    move-exception v0

    .line 3286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .locals 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/net/InetAddress;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 1607
    new-instance v9, Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p1, p3, v0}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$PacketKeepalive;)V

    .line 1609
    .local v9, "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get1(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;

    move-result-object v3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 1610
    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v6, p5

    .line 1609
    invoke-interface/range {v0 .. v7}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    return-object v9

    .line 1611
    :catch_0
    move-exception v8

    .line 1612
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "ConnectivityManager"

    const-string/jumbo v1, "Error starting packet keepalive: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    invoke-virtual {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1614
    const/4 v0, 0x0

    return-object v0
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .prologue
    .line 2086
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 2085
    return-void
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2111
    new-instance v1, Landroid/net/ConnectivityManager$2;

    invoke-direct {v1, p0, p4, p3}, Landroid/net/ConnectivityManager$2;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 2122
    .local v1, "wrappedCallback":Landroid/os/ResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v1, p2}, Landroid/net/IConnectivityManager;->startTethering(ILandroid/os/ResultReceiver;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :goto_0
    return-void

    .line 2123
    :catch_0
    move-exception v0

    .line 2124
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ConnectivityManager"

    const-string/jumbo v3, "Exception trying to start tethering."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2125
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 1170
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1171
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1172
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v1, :cond_0

    .line 1173
    const-string/jumbo v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t satisfy startUsingNetworkFeature for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return v6

    .line 1178
    :cond_0
    const/4 v2, 0x0

    .line 1179
    .local v2, "request":Landroid/net/NetworkRequest;
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 1180
    :try_start_0
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1181
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_2

    .line 1182
    const-string/jumbo v3, "ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "renewing startUsingNetworkFeature request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1184
    iget-object v3, v0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1185
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :cond_1
    monitor-exit v4

    .line 1187
    return v7

    .line 1191
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "request":Landroid/net/NetworkRequest;
    monitor-exit v4

    .line 1193
    if-eqz v2, :cond_3

    .line 1194
    const-string/jumbo v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starting startUsingNetworkFeature for request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return v7

    .line 1179
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .local v2, "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1197
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .local v2, "request":Landroid/net/NetworkRequest;
    :cond_3
    const-string/jumbo v3, "ConnectivityManager"

    const-string/jumbo v4, " request Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v6
.end method

.method public stopTethering(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2142
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->stopTethering(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    return-void

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1225
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1226
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1227
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1228
    const-string/jumbo v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t satisfy stopUsingNetworkFeature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v1, -0x1

    return v1

    .line 1233
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    const-string/jumbo v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopUsingNetworkFeature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2008
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3225
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    .line 3224
    return-void
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 3203
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3205
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid NetworkCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3204
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-eqz v1, :cond_0

    .line 3209
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3202
    return-void

    .line 3210
    :catch_0
    move-exception v0

    .line 3211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 2561
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2559
    return-void

    .line 2562
    :catch_0
    move-exception v0

    .line 2563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2034
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2035
    :catch_0
    move-exception v0

    .line 2036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateLockdownVpn()Z
    .locals 2

    .prologue
    .line 2476
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2477
    :catch_0
    move-exception v0

    .line 2478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
