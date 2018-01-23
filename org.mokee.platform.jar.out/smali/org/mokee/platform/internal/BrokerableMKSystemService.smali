.class public abstract Lorg/mokee/platform/internal/BrokerableMKSystemService;
.super Lorg/mokee/platform/internal/MKSystemService;
.source "BrokerableMKSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/BrokerableMKSystemService$1;,
        Lorg/mokee/platform/internal/BrokerableMKSystemService$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lorg/mokee/platform/internal/MKSystemService;"
    }
.end annotation


# static fields
.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrokeredServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mImplementingBinderInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/mokee/platform/internal/BrokerableMKSystemService;)Lorg/mokee/platform/internal/common/BrokeredServiceConnection;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mBrokeredServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Lorg/mokee/platform/internal/BrokerableMKSystemService;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mImplementingBinderInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/MKSystemService;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v0, Lorg/mokee/platform/internal/BrokerableMKSystemService$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService$1;-><init>(Lorg/mokee/platform/internal/BrokerableMKSystemService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mConnectionHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;-><init>(Lorg/mokee/platform/internal/BrokerableMKSystemService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mConnection:Landroid/content/ServiceConnection;

    .line 52
    iput-object p1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getOrConnectService()Landroid/os/IInterface;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    const/4 v10, 0x0

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mImplementingBinderInterface:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mImplementingBinderInterface:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 138
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mConnectionHandler:Landroid/os/Handler;

    .line 139
    iget-object v6, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mConnectionHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 138
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0xfa0

    add-long v2, v6, v8

    .line 142
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0xfa0

    .line 143
    .local v4, "waitTime":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 146
    :try_start_2
    invoke-virtual {p0, v4, v5}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mImplementingBinderInterface:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mImplementingBinderInterface:Landroid/os/IInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v1, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Connection wait interrupted"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 133
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 155
    .restart local v2    # "shouldEnd":J
    .restart local v4    # "waitTime":J
    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_0

    :cond_2
    monitor-exit p0

    .line 157
    return-object v10
.end method


# virtual methods
.method public final getBrokeredService()Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    invoke-direct {p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->getOrConnectService()Landroid/os/IInterface;

    move-result-object v0

    .line 117
    .local v0, "service":Landroid/os/IInterface;, "TT;"
    if-eqz v0, :cond_0

    .line 118
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->getDefaultImplementation()Landroid/os/IInterface;

    move-result-object v1

    return-object v1
.end method

.method protected getComponentFilteringPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    const-string/jumbo v0, "mokee.permission.BIND_CORE_SERVICE"

    return-object v0
.end method

.method protected abstract getDefaultImplementation()Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract getServiceComponent()Landroid/content/ComponentName;
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 125
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    invoke-super {p0, p1}, Lorg/mokee/platform/internal/MKSystemService;->onBootPhase(I)V

    .line 126
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 127
    sget-object v0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Third party apps ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->tryConnecting()V

    .line 124
    :cond_0
    return-void
.end method

.method public final setBrokeredServiceConnection(Lorg/mokee/platform/internal/common/BrokeredServiceConnection;)V
    .locals 3
    .param p1, "brokeredServiceComponent"    # Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    .prologue
    .line 104
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting brokered service connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object p1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mBrokeredServiceConnection:Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    .line 103
    return-void
.end method

.method public final tryConnecting()V
    .locals 6

    .prologue
    .line 179
    .local p0, "this":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    sget-object v3, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Connecting to implementation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v3, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mImplementingBinderInterface:Landroid/os/IInterface;

    if-eqz v3, :cond_0

    .line 182
    sget-object v3, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Already connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 183
    return-void

    .line 185
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 187
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 188
    sget-object v3, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No implementation service found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 189
    return-void

    .line 191
    :cond_1
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    iget-object v3, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 194
    invoke-virtual {p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->getComponentFilteringPermission()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    sget-object v3, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Target component lacks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->getComponentFilteringPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    const-string/jumbo v5, " service permission, failing "

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 198
    return-void

    .line 200
    :cond_2
    :try_start_4
    iget-object v3, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 201
    sget-object v3, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to bind to implementation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    .line 178
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_5
    sget-object v3, Lorg/mokee/platform/internal/BrokerableMKSystemService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Forbidden to bind to implementation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
