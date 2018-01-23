.class public Lmokee/themes/ThemeChangeRequest$Builder;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/themes/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

.field mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 201
    sget-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lmokee/themes/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 1
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 201
    sget-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lmokee/themes/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V

    .line 206
    :cond_0
    return-void
.end method

.method private buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V
    .locals 4
    .param p1, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmokee/themes/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 302
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmokee/themes/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    .line 304
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 305
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmokee/themes/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    .line 307
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 308
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmokee/themes/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    .line 310
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 311
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmokee/themes/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    .line 315
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    .line 316
    .local v2, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "appPkgName":Ljava/lang/String;
    goto :goto_0

    .line 297
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public build()Lmokee/themes/ThemeChangeRequest;
    .locals 7

    .prologue
    .line 293
    new-instance v0, Lmokee/themes/ThemeChangeRequest;

    iget-object v1, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    iget-object v2, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    .line 294
    iget-object v3, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    iget-wide v4, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mWallpaperId:J

    .line 293
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmokee/themes/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Lmokee/themes/ThemeChangeRequest$RequestType;JLmokee/themes/ThemeChangeRequest;)V

    return-object v0
.end method

.method public setAlarm(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string/jumbo v0, "mods_alarms"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "appPkgName"    # Ljava/lang/String;
    .param p2, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    if-eqz p2, :cond_1

    .line 278
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    :goto_0
    return-object p0

    .line 280
    :cond_1
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBootanimation(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v0, "mods_bootanim"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 267
    if-eqz p2, :cond_0

    .line 268
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_0
    return-object p0

    .line 270
    :cond_0
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFont(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string/jumbo v0, "mods_fonts"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcons(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string/jumbo v0, "mods_icons"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLiveLockScreen(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string/jumbo v0, "mods_live_lock_screen"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLockWallpaper(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v0, "mods_lockscreen"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNavBar(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNotification(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string/jumbo v0, "mods_notifications"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOverlay(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "mods_overlays"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestType(Lmokee/themes/ThemeChangeRequest$RequestType;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 0
    .param p1, "requestType"    # Lmokee/themes/ThemeChangeRequest$RequestType;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .end local p1    # "requestType":Lmokee/themes/ThemeChangeRequest$RequestType;
    :goto_0
    iput-object p1, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 289
    return-object p0

    .line 288
    .restart local p1    # "requestType":Lmokee/themes/ThemeChangeRequest$RequestType;
    :cond_0
    sget-object p1, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lmokee/themes/ThemeChangeRequest$RequestType;

    goto :goto_0
.end method

.method public setRingtone(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string/jumbo v0, "mods_ringtones"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBar(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string/jumbo v0, "mods_status_bar"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaper(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string/jumbo v0, "mods_homescreen"

    invoke-virtual {p0, v0, p1}, Lmokee/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperId(J)Lmokee/themes/ThemeChangeRequest$Builder;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 242
    iput-wide p1, p0, Lmokee/themes/ThemeChangeRequest$Builder;->mWallpaperId:J

    .line 243
    return-object p0
.end method
