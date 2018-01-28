.class public Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;
.super Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;
.source "FingerprintShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/fingerprint/FingerprintShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutTargetImpl"
.end annotation


# instance fields
.field private mShortcut:Landroid/content/pm/ShortcutInfo;

.field final synthetic this$0:Lmokee/fingerprint/FingerprintShortcutManager;


# direct methods
.method private constructor <init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lmokee/fingerprint/FingerprintShortcutManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;)V

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/fingerprint/FingerprintShortcutManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;-><init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->mShortcut:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->shortcutId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap1(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    iput-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->mShortcut:Landroid/content/pm/ShortcutInfo;

    .line 307
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->mShortcut:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap3(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->mShortcut:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->shortcutId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap1(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    iput-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->mShortcut:Landroid/content/pm/ShortcutInfo;

    .line 315
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->mShortcut:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager;->-wrap5(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method startAsUser(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->this$0:Lmokee/fingerprint/FingerprintShortcutManager;

    invoke-static {v0}, Lmokee/fingerprint/FingerprintShortcutManager;->-get0(Lmokee/fingerprint/FingerprintShortcutManager;)Landroid/content/pm/LauncherApps;

    move-result-object v0

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;->shortcutId:Ljava/lang/String;

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 297
    return-void
.end method
