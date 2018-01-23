.class public Lmokee/app/MKStatusBarManager;
.super Ljava/lang/Object;
.source "MKStatusBarManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MKStatusBarManager"

.field private static localLOGV:Z

.field private static sMKStatusBarManagerInstance:Lmokee/app/MKStatusBarManager;

.field private static sService:Lmokee/app/IMKStatusBarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lmokee/app/MKStatusBarManager;->localLOGV:Z

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 64
    iput-object v0, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    .line 68
    :goto_0
    invoke-virtual {p0}, Lmokee/app/MKStatusBarManager;->getService()Lmokee/app/IMKStatusBarManager;

    move-result-object v1

    sput-object v1, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    const-string/jumbo v2, "org.mokee.statusbar"

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    if-nez v1, :cond_0

    .line 72
    const-string/jumbo v1, "MKStatusBarManager"

    const-string/jumbo v2, "Unable to get MKStatusBarService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void

    .line 66
    :cond_1
    iput-object p1, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lmokee/app/MKStatusBarManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v0, Lmokee/app/MKStatusBarManager;->sMKStatusBarManagerInstance:Lmokee/app/MKStatusBarManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lmokee/app/MKStatusBarManager;

    invoke-direct {v0, p0}, Lmokee/app/MKStatusBarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/app/MKStatusBarManager;->sMKStatusBarManagerInstance:Lmokee/app/MKStatusBarManager;

    .line 87
    :cond_0
    sget-object v0, Lmokee/app/MKStatusBarManager;->sMKStatusBarManagerInstance:Lmokee/app/MKStatusBarManager;

    return-object v0
.end method


# virtual methods
.method public getService()Lmokee/app/IMKStatusBarManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    sget-object v1, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    return-object v1

    .line 241
    :cond_0
    const-string/jumbo v1, "mkstatusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 242
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 243
    invoke-static {v0}, Lmokee/app/IMKStatusBarManager$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/app/IMKStatusBarManager;

    move-result-object v1

    sput-object v1, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    .line 244
    sget-object v1, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    return-object v1

    .line 246
    :cond_1
    return-object v2
.end method

.method public publishTile(ILmokee/app/CustomTile;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "customTile"    # Lmokee/app/CustomTile;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmokee/app/MKStatusBarManager;->publishTile(Ljava/lang/String;ILmokee/app/CustomTile;)V

    .line 103
    return-void
.end method

.method public publishTile(Ljava/lang/String;ILmokee/app/CustomTile;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "customTile"    # Lmokee/app/CustomTile;

    .prologue
    .line 122
    sget-object v0, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "MKStatusBarManager"

    const-string/jumbo v2, "not connected to MKStatusBarManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 128
    .local v6, "idOut":[I
    iget-object v0, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v0, Lmokee/app/MKStatusBarManager;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MKStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": create("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :try_start_0
    sget-object v0, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    iget-object v2, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 131
    invoke-interface/range {v0 .. v7}, Lmokee/app/IMKStatusBarManager;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmokee/app/CustomTile;[II)V

    .line 133
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p2, v0, :cond_2

    .line 134
    const-string/jumbo v0, "MKStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_2
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MKStatusBarManager"

    const-string/jumbo v2, "warning: no mk status bar service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public publishTileAsUser(Ljava/lang/String;ILmokee/app/CustomTile;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "customTile"    # Lmokee/app/CustomTile;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 156
    sget-object v0, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    if-nez v0, :cond_0

    .line 157
    const-string/jumbo v0, "MKStatusBarManager"

    const-string/jumbo v2, "not connected to MKStatusBarManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 162
    .local v6, "idOut":[I
    iget-object v0, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v0, Lmokee/app/MKStatusBarManager;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MKStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": create("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    :try_start_0
    sget-object v0, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    iget-object v2, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 165
    invoke-interface/range {v0 .. v7}, Lmokee/app/IMKStatusBarManager;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmokee/app/CustomTile;[II)V

    .line 167
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p2, v0, :cond_2

    .line 168
    const-string/jumbo v0, "MKStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MKStatusBarManager"

    const-string/jumbo v2, "warning: no mk status bar service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeTile(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmokee/app/MKStatusBarManager;->removeTile(Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method public removeTile(Ljava/lang/String;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 197
    sget-object v2, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v2, "MKStatusBarManager"

    const-string/jumbo v3, "not connected to MKStatusBarManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v2, Lmokee/app/MKStatusBarManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MKStatusBarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    :try_start_0
    sget-object v2, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Lmokee/app/IMKStatusBarManager;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MKStatusBarManager"

    const-string/jumbo v3, "warning: no mk status bar service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeTileAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 223
    sget-object v2, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    if-nez v2, :cond_0

    .line 224
    const-string/jumbo v2, "MKStatusBarManager"

    const-string/jumbo v3, "not connected to MKStatusBarManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 228
    :cond_0
    iget-object v2, p0, Lmokee/app/MKStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v2, Lmokee/app/MKStatusBarManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MKStatusBarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    :try_start_0
    sget-object v2, Lmokee/app/MKStatusBarManager;->sService:Lmokee/app/IMKStatusBarManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Lmokee/app/IMKStatusBarManager;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
