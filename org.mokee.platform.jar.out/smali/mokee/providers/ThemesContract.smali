.class public Lmokee/providers/ThemesContract;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/providers/ThemesContract$MixnMatchColumns;,
        Lmokee/providers/ThemesContract$PreviewColumns;,
        Lmokee/providers/ThemesContract$ThemeMixColumns;,
        Lmokee/providers/ThemesContract$ThemeMixEntryColumns;,
        Lmokee/providers/ThemesContract$ThemesColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mokee.themes"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "content://com.mokee.themes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmokee/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
