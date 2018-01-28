.class Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceSettingsObserver"
.end annotation


# instance fields
.field private final APP_PERFORMANCE_PROFILES_ENABLED_URI:Landroid/net/Uri;

.field private final PERFORMANCE_PROFILE_URI:Landroid/net/Uri;

.field private final mCR:Landroid/content/ContentResolver;

.field final synthetic this$0:Lorg/mokee/platform/internal/PerformanceManagerService;


# direct methods
.method public constructor <init>(Lorg/mokee/platform/internal/PerformanceManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lorg/mokee/platform/internal/PerformanceManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    .line 162
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 154
    const-string/jumbo v0, "app_perf_profiles_enabled"

    invoke-static {v0}, Lmokee/providers/MKSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 153
    iput-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->APP_PERFORMANCE_PROFILES_ENABLED_URI:Landroid/net/Uri;

    .line 157
    const-string/jumbo v0, "performance_profile"

    invoke-static {v0}, Lmokee/providers/MKSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    iput-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->PERFORMANCE_PROFILE_URI:Landroid/net/Uri;

    .line 163
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    .line 161
    return-void
.end method


# virtual methods
.method public observe(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->APP_PERFORMANCE_PROFILES_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->PERFORMANCE_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    invoke-virtual {p0, v2}, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->onChange(Z)V

    .line 166
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    const-string/jumbo v3, "performance_profile"

    invoke-static {v2, v3, v4}, Lmokee/providers/MKSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, "profile":I
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    const-string/jumbo v3, "app_perf_profiles_enabled"

    invoke-static {v2, v3, v4}, Lmokee/providers/MKSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    .line 182
    .local v0, "boost":Z
    :goto_0
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap1(Lorg/mokee/platform/internal/PerformanceManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmokee/power/PerformanceProfile;

    invoke-virtual {v2}, Lmokee/power/PerformanceProfile;->isBoostEnabled()Z

    move-result v0

    .line 187
    .end local v0    # "boost":Z
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2, v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->-set0(Lorg/mokee/platform/internal/PerformanceManagerService;Z)Z

    .line 188
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v2

    if-gez v2, :cond_1

    .line 189
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v2, v1}, Lorg/mokee/platform/internal/PerformanceManagerService;->-set3(Lorg/mokee/platform/internal/PerformanceManagerService;I)I

    .line 190
    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/mokee/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/mokee/platform/internal/PerformanceManagerService;->-get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/mokee/platform/internal/PerformanceManagerService;->-wrap2(Lorg/mokee/platform/internal/PerformanceManagerService;IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 178
    return-void

    .line 180
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "boost":Z
    goto :goto_0

    .line 184
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 182
    .end local v0    # "boost":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
