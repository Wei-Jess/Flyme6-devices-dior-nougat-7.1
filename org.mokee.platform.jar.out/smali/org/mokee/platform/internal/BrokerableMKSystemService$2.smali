.class Lorg/mokee/platform/internal/BrokerableMKSystemService$2;
.super Ljava/lang/Object;
.source "BrokerableMKSystemService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/BrokerableMKSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/BrokerableMKSystemService;)V
    .locals 0

    .prologue
    .line 209
    .local p1, "this$0":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    iput-object p1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 212
    invoke-static {}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Implementation service connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    iget-object v2, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-virtual {v2, p2}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-set0(Lorg/mokee/platform/internal/BrokerableMKSystemService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 215
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->notifyAll()V

    .line 216
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-static {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get1(Lorg/mokee/platform/internal/BrokerableMKSystemService;)Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Notifying service connected"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-static {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get1(Lorg/mokee/platform/internal/BrokerableMKSystemService;)Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/mokee/platform/internal/common/BrokeredServiceConnection;->onBrokeredServiceConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 211
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 225
    invoke-static {}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Implementation service unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-set0(Lorg/mokee/platform/internal/BrokerableMKSystemService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 228
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->notifyAll()V

    .line 229
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-static {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get1(Lorg/mokee/platform/internal/BrokerableMKSystemService;)Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$2;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-static {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get1(Lorg/mokee/platform/internal/BrokerableMKSystemService;)Lorg/mokee/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/mokee/platform/internal/common/BrokeredServiceConnection;->onBrokeredServiceDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 224
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
