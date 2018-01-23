.class public Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;
.super Ljava/lang/Object;
.source "PacifierInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/PacifierInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacifierInfoCache"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private a(Lcom/mokee/aegis/PacifierInfo$PackageInfo;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/aegis/PacifierInfo$PackageInfo;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mokee/aegis/PacifierInfo$UidInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v1, Lcom/mokee/aegis/WardenInfo$UidInfo;->c:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a(Landroid/util/SparseArray;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Lcom/mokee/aegis/PacifierInfo$UidInfo;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Lcom/mokee/aegis/PacifierInfo$PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ")",
            "Lcom/mokee/aegis/PacifierInfo$PackageInfo;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lcom/mokee/aegis/WardenInfo$UidInfo;->c:Z

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a(Lcom/mokee/aegis/PacifierInfo$PackageInfo;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    if-nez v2, :cond_2

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_3
    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$UidInfo;->getActions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p4}, Lcom/mokee/aegis/PacifierInfo$Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :cond_5
    new-instance v1, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a(Lcom/mokee/aegis/PacifierInfo$PackageInfo;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    throw v0

    :cond_6
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    invoke-virtual {v1}, Lcom/mokee/aegis/PacifierInfo$UidInfo;->getActions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p4}, Lcom/mokee/aegis/PacifierInfo$Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method private a(Landroid/util/SparseArray;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Lcom/mokee/aegis/PacifierInfo$UidInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mokee/aegis/PacifierInfo$UidInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ")",
            "Lcom/mokee/aegis/PacifierInfo$UidInfo;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-boolean v1, Lcom/mokee/aegis/WardenInfo$UidInfo;->c:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    invoke-direct {p0, v2, p2, p4}, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a(Lcom/mokee/aegis/PacifierInfo$UidInfo;Ljava/lang/String;Lcom/mokee/aegis/PacifierInfo$Action;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p3, v3, v2}, Lcom/mokee/aegis/PacifierInfo$UidInfo;-><init>(IILjava/util/Map;)V

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private a(Lcom/mokee/aegis/PacifierInfo$UidInfo;Ljava/lang/String;Lcom/mokee/aegis/PacifierInfo$Action;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/aegis/PacifierInfo$UidInfo;",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$Action;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/mokee/aegis/WardenInfo$UidInfo;->c:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/mokee/aegis/PacifierInfo$UidInfo;->getActions()Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-virtual {p3}, Lcom/mokee/aegis/PacifierInfo$Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mokee/aegis/PacifierInfo;->access$0()Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {}, Lcom/mokee/aegis/PacifierInfo;->access$0()Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;

    invoke-direct {v0}, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;-><init>()V

    invoke-static {v0}, Lcom/mokee/aegis/PacifierInfo;->access$1(Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public addActionInfo(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/mokee/aegis/PacifierInfo$Action;

    invoke-direct {v3, p4, v2}, Lcom/mokee/aegis/PacifierInfo$Action;-><init>(Ljava/lang/String;I)V

    sget-boolean v4, Lcom/mokee/aegis/WardenInfo$UidInfo;->c:Z

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v0

    :cond_0
    invoke-direct {p0, v1, p2, p3, v3}, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a(Ljava/util/Map;Ljava/lang/String;ILcom/mokee/aegis/PacifierInfo$Action;)Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    move-result-object v1

    :try_start_1
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/mokee/aegis/PacifierInfo;->access$2()Lcom/mokee/aegis/PacifierUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mokee/aegis/PacifierUtils;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_2

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public declared-synchronized getPacifierInfo(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/PacifierInfo$PackageInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mokee/aegis/PacifierInfo;->access$2()Lcom/mokee/aegis/PacifierUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierUtils;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePackageInfoFromUid(ILjava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/mokee/aegis/PacifierInfo;->access$2()Lcom/mokee/aegis/PacifierUtils;

    move-result-object v1

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/mokee/aegis/PacifierUtils;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateModeFromUid(ILjava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v0}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    invoke-virtual {v0, p4}, Lcom/mokee/aegis/PacifierInfo$UidInfo;->setMode(I)V

    invoke-static {}, Lcom/mokee/aegis/PacifierInfo;->access$2()Lcom/mokee/aegis/PacifierUtils;

    move-result-object v1

    iget-object v0, p0, Lcom/mokee/aegis/PacifierInfo$PacifierInfoCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/mokee/aegis/PacifierUtils;->a(Ljava/util/Map;)V

    return-void
.end method
