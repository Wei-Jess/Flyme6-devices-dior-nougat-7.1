.class public final enum Lmokee/app/ProfileGroup$Mode;
.super Ljava/lang/Enum;
.source "ProfileGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/ProfileGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmokee/app/ProfileGroup$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmokee/app/ProfileGroup$Mode;

.field public static final enum DEFAULT:Lmokee/app/ProfileGroup$Mode;

.field public static final enum OVERRIDE:Lmokee/app/ProfileGroup$Mode;

.field public static final enum SUPPRESS:Lmokee/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    new-instance v0, Lmokee/app/ProfileGroup$Mode;

    const-string/jumbo v1, "SUPPRESS"

    invoke-direct {v0, v1, v2}, Lmokee/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/app/ProfileGroup$Mode;->SUPPRESS:Lmokee/app/ProfileGroup$Mode;

    new-instance v0, Lmokee/app/ProfileGroup$Mode;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lmokee/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/app/ProfileGroup$Mode;->DEFAULT:Lmokee/app/ProfileGroup$Mode;

    new-instance v0, Lmokee/app/ProfileGroup$Mode;

    const-string/jumbo v1, "OVERRIDE"

    invoke-direct {v0, v1, v4}, Lmokee/app/ProfileGroup$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmokee/app/ProfileGroup$Mode;->OVERRIDE:Lmokee/app/ProfileGroup$Mode;

    .line 318
    const/4 v0, 0x3

    new-array v0, v0, [Lmokee/app/ProfileGroup$Mode;

    sget-object v1, Lmokee/app/ProfileGroup$Mode;->SUPPRESS:Lmokee/app/ProfileGroup$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lmokee/app/ProfileGroup$Mode;->DEFAULT:Lmokee/app/ProfileGroup$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lmokee/app/ProfileGroup$Mode;->OVERRIDE:Lmokee/app/ProfileGroup$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lmokee/app/ProfileGroup$Mode;->$VALUES:[Lmokee/app/ProfileGroup$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmokee/app/ProfileGroup$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    const-class v0, Lmokee/app/ProfileGroup$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmokee/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public static values()[Lmokee/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lmokee/app/ProfileGroup$Mode;->$VALUES:[Lmokee/app/ProfileGroup$Mode;

    return-object v0
.end method
