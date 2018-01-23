.class public Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;
.super Lmokee/fingerprint/FingerprintShortcutManager$Target;
.source "FingerprintShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/fingerprint/FingerprintShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutTarget"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-direct {p0}, Lmokee/fingerprint/FingerprintShortcutManager$Target;-><init>()V

    .line 241
    iput-object p1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;->packageName:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;->shortcutId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shortcut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;->shortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
