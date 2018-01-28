.class public Lmokee/power/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# static fields
.field public static final POSSIBLE_POWER_PROFILES:[I

.field public static final POWER_PROFILE_CHANGED:Ljava/lang/String; = "mokee.power.PROFILE_CHANGED"

.field public static final PROFILE_BALANCED:I = 0x1

.field public static final PROFILE_BIAS_PERFORMANCE:I = 0x4

.field public static final PROFILE_BIAS_POWER_SAVE:I = 0x3

.field public static final PROFILE_HIGH_PERFORMANCE:I = 0x2

.field public static final PROFILE_POWER_SAVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PerformanceManager"

.field private static sInstance:Lmokee/power/PerformanceManager;

.field private static sService:Lmokee/power/IPerformanceManager;


# instance fields
.field private mNumberOfProfiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    const/4 v1, 0x1

    .line 81
    const/4 v2, 0x2

    .line 82
    const/4 v3, 0x3

    .line 83
    const/4 v4, 0x4

    .line 78
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lmokee/power/PerformanceManager;->POSSIBLE_POWER_PROFILES:[I

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    .line 97
    invoke-static {}, Lmokee/power/PerformanceManager;->getService()Lmokee/power/IPerformanceManager;

    move-result-object v1

    sput-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "org.mokee.performance"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    if-nez v1, :cond_0

    .line 100
    const-string/jumbo v1, "PerformanceManager"

    const-string/jumbo v2, "Unable to get PerformanceManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :try_start_0
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v1}, Lmokee/power/IPerformanceManager;->getNumberOfProfiles()I

    move-result v1

    iput v1, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v0, "PerformanceManager"

    const-string/jumbo v1, "not connected to PerformanceManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmokee/power/PerformanceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    sget-object v0, Lmokee/power/PerformanceManager;->sInstance:Lmokee/power/PerformanceManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lmokee/power/PerformanceManager;

    invoke-direct {v0, p0}, Lmokee/power/PerformanceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/power/PerformanceManager;->sInstance:Lmokee/power/PerformanceManager;

    .line 116
    :cond_0
    sget-object v0, Lmokee/power/PerformanceManager;->sInstance:Lmokee/power/PerformanceManager;

    return-object v0
.end method

.method public static getService()Lmokee/power/IPerformanceManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    return-object v1

    .line 124
    :cond_0
    const-string/jumbo v1, "mkperformance"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 125
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 126
    invoke-static {v0}, Lmokee/power/IPerformanceManager$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/power/IPerformanceManager;

    move-result-object v1

    sput-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    .line 127
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    return-object v1

    .line 129
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 150
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v1, p1}, Lmokee/power/IPerformanceManager;->cpuBoost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActivePowerProfile()Lmokee/power/PerformanceProfile;
    .locals 3

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "ret":Lmokee/power/PerformanceProfile;
    iget v2, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 254
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    sget-object v2, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v2}, Lmokee/power/IPerformanceManager;->getActivePowerProfile()Lmokee/power/PerformanceProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    .end local v1    # "ret":Lmokee/power/PerformanceProfile;
    :cond_0
    :goto_0
    return-object v1

    .line 257
    .restart local v1    # "ret":Lmokee/power/PerformanceProfile;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNumberOfProfiles()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    return v0
.end method

.method public getPowerProfile()I
    .locals 3

    .prologue
    .line 213
    const/4 v1, -0x1

    .line 214
    .local v1, "ret":I
    iget v2, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 216
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v2}, Lmokee/power/IPerformanceManager;->getPowerProfile()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPowerProfile(I)Lmokee/power/PerformanceProfile;
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "ret":Lmokee/power/PerformanceProfile;
    iget v2, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    sget-object v2, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lmokee/power/IPerformanceManager;->getPowerProfileById(I)Lmokee/power/PerformanceProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    .end local v1    # "ret":Lmokee/power/PerformanceProfile;
    :cond_0
    :goto_0
    return-object v1

    .line 238
    .restart local v1    # "ret":Lmokee/power/PerformanceProfile;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPowerProfiles()Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lmokee/power/PerformanceProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 289
    .local v2, "profiles":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lmokee/power/PerformanceProfile;>;"
    iget v3, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v3, :cond_0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    sget-object v3, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v3}, Lmokee/power/IPerformanceManager;->getPowerProfiles()[Lmokee/power/PerformanceProfile;

    move-result-object v1

    .line 293
    .local v1, "p":[Lmokee/power/PerformanceProfile;
    if-eqz v1, :cond_0

    .line 294
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1    # "p":[Lmokee/power/PerformanceProfile;
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v3

    return-object v3

    .line 297
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getProfileHasAppProfiles(I)Z
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "ret":Z
    iget v2, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 272
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    sget-object v2, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lmokee/power/IPerformanceManager;->getPowerProfileById(I)Lmokee/power/PerformanceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lmokee/power/PerformanceProfile;->isBoostEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 279
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 275
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPowerProfile(I)Z
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 171
    iget v2, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Power profiles not enabled on this system!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 177
    .local v0, "changed":Z
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    sget-object v2, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lmokee/power/IPerformanceManager;->setPowerProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 183
    .end local v0    # "changed":Z
    :cond_1
    return v0

    .line 180
    .restart local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPowerProfile(Lmokee/power/PerformanceProfile;)Z
    .locals 4
    .param p1, "profile"    # Lmokee/power/PerformanceProfile;

    .prologue
    .line 192
    iget v2, p0, Lmokee/power/PerformanceManager;->mNumberOfProfiles:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Power profiles not enabled on this system!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "changed":Z
    :try_start_0
    invoke-direct {p0}, Lmokee/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    sget-object v2, Lmokee/power/PerformanceManager;->sService:Lmokee/power/IPerformanceManager;

    invoke-virtual {p1}, Lmokee/power/PerformanceProfile;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lmokee/power/IPerformanceManager;->setPowerProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    .end local v0    # "changed":Z
    :cond_1
    return v0

    .line 201
    .restart local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
