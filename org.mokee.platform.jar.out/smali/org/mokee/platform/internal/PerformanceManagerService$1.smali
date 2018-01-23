.class Lorg/mokee/platform/internal/PerformanceManagerService$1;
.super Lmokee/power/IPerformanceManager$Stub;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/PerformanceManagerService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/PerformanceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/PerformanceManagerService;

    .prologue
    .line 380
    iput-object p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Lmokee/power/IPerformanceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap4(Lorg/mokee/platform/internal/PerformanceManagerService;I)V

    .line 395
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 435
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get4(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    const-string/jumbo v4, "PerformanceManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 438
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 439
    const-string/jumbo v2, "PerformanceManager Service State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Boost enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get2(Lorg/mokee/platform/internal/PerformanceManagerService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap1(Lorg/mokee/platform/internal/PerformanceManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    const-string/jumbo v2, " No profiles available."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 434
    return-void

    .line 446
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " User-selected profile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v5}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v2

    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get0(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " System-selected profile: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 450
    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v5}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get0(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 453
    const-string/jumbo v2, " Supported profiles:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 455
    .local v0, "profile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lmokee/power/PerformanceProfile;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmokee/power/PerformanceProfile;

    invoke-virtual {v2}, Lmokee/power/PerformanceProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 437
    .end local v0    # "profile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lmokee/power/PerformanceProfile;>;"
    .end local v1    # "profile$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 457
    .restart local v1    # "profile$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap0(Lorg/mokee/platform/internal/PerformanceManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " App trigger count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get1(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 462
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get3(Lorg/mokee/platform/internal/PerformanceManagerService;)Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;->dump(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public getActivePowerProfile()Lmokee/power/PerformanceProfile;
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/power/PerformanceProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNumberOfProfiles()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get7(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v0

    return v0
.end method

.method public getPowerProfile()I
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPowerProfileById(I)Lmokee/power/PerformanceProfile;
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/power/PerformanceProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPowerProfiles()[Lmokee/power/PerformanceProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 429
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v2, v2, [Lmokee/power/PerformanceProfile;

    .line 428
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmokee/power/PerformanceProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPowerProfile(I)Z
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$1;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap2(Lorg/mokee/platform/internal/PerformanceManagerService;IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
