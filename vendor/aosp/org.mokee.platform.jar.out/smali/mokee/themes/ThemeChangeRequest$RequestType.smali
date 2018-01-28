.class public final enum Lmokee/themes/ThemeChangeRequest$RequestType;
.super Ljava/lang/Enum;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/themes/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmokee/themes/ThemeChangeRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmokee/themes/ThemeChangeRequest$RequestType;

.field public static final enum THEME_REMOVED:Lmokee/themes/ThemeChangeRequest$RequestType;

.field public static final enum THEME_RESET:Lmokee/themes/ThemeChangeRequest$RequestType;

.field public static final enum THEME_UPDATED:Lmokee/themes/ThemeChangeRequest$RequestType;

.field public static final enum USER_REQUEST:Lmokee/themes/ThemeChangeRequest$RequestType;

.field public static final enum USER_REQUEST_MIXNMATCH:Lmokee/themes/ThemeChangeRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    new-instance v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "USER_REQUEST"

    invoke-direct {v0, v1, v2}, Lmokee/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 192
    new-instance v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "USER_REQUEST_MIXNMATCH"

    invoke-direct {v0, v1, v3}, Lmokee/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST_MIXNMATCH:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 193
    new-instance v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "THEME_UPDATED"

    invoke-direct {v0, v1, v4}, Lmokee/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->THEME_UPDATED:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 194
    new-instance v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "THEME_REMOVED"

    invoke-direct {v0, v1, v5}, Lmokee/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->THEME_REMOVED:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 195
    new-instance v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    const-string/jumbo v1, "THEME_RESET"

    invoke-direct {v0, v1, v6}, Lmokee/themes/ThemeChangeRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 190
    const/4 v0, 0x5

    new-array v0, v0, [Lmokee/themes/ThemeChangeRequest$RequestType;

    sget-object v1, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lmokee/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lmokee/themes/ThemeChangeRequest$RequestType;->USER_REQUEST_MIXNMATCH:Lmokee/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lmokee/themes/ThemeChangeRequest$RequestType;->THEME_UPDATED:Lmokee/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lmokee/themes/ThemeChangeRequest$RequestType;->THEME_REMOVED:Lmokee/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lmokee/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lmokee/themes/ThemeChangeRequest$RequestType;

    aput-object v1, v0, v6

    sput-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->$VALUES:[Lmokee/themes/ThemeChangeRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmokee/themes/ThemeChangeRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    const-class v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmokee/themes/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lmokee/themes/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lmokee/themes/ThemeChangeRequest$RequestType;->$VALUES:[Lmokee/themes/ThemeChangeRequest$RequestType;

    return-object v0
.end method
