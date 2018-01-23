.class Lorg/mokee/platform/internal/PerformanceManagerService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 580
    iput-object p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService$3;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$3;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 584
    :try_start_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$3;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap5(Lorg/mokee/platform/internal/PerformanceManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 582
    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
