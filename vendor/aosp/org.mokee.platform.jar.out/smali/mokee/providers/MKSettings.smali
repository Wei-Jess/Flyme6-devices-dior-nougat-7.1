.class public final Lmokee/providers/MKSettings;
.super Ljava/lang/Object;
.source "MKSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/providers/MKSettings$1;,
        Lmokee/providers/MKSettings$2;,
        Lmokee/providers/MKSettings$3;,
        Lmokee/providers/MKSettings$DelimitedListValidator;,
        Lmokee/providers/MKSettings$DiscreteValueValidator;,
        Lmokee/providers/MKSettings$Global;,
        Lmokee/providers/MKSettings$InclusiveFloatRangeValidator;,
        Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;,
        Lmokee/providers/MKSettings$MKSettingNotFoundException;,
        Lmokee/providers/MKSettings$NameValueCache;,
        Lmokee/providers/MKSettings$Secure;,
        Lmokee/providers/MKSettings$System;,
        Lmokee/providers/MKSettings$Validator;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_USAGE:Ljava/lang/String; = "mokee.settings.ACTION_DATA_USAGE"

.field public static final ACTION_LIVEDISPLAY_SETTINGS:Ljava/lang/String; = "mokee.settings.LIVEDISPLAY_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "mksettings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_MIGRATE_SETTINGS:Ljava/lang/String; = "migrate_settings"

.field public static final CALL_METHOD_MIGRATE_SETTINGS_FOR_USER:Ljava/lang/String; = "migrate_settings_for_user"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "MKSettings"

.field private static final sAlwaysTrueValidator:Lmokee/providers/MKSettings$Validator;

.field private static final sBooleanValidator:Lmokee/providers/MKSettings$Validator;

.field private static final sColorValidator:Lmokee/providers/MKSettings$Validator;

.field private static final sNonNegativeIntegerValidator:Lmokee/providers/MKSettings$Validator;

.field private static final sUriValidator:Lmokee/providers/MKSettings$Validator;


# direct methods
.method static synthetic -get0()Lmokee/providers/MKSettings$Validator;
    .locals 1

    sget-object v0, Lmokee/providers/MKSettings;->sAlwaysTrueValidator:Lmokee/providers/MKSettings$Validator;

    return-object v0
.end method

.method static synthetic -get1()Lmokee/providers/MKSettings$Validator;
    .locals 1

    sget-object v0, Lmokee/providers/MKSettings;->sBooleanValidator:Lmokee/providers/MKSettings$Validator;

    return-object v0
.end method

.method static synthetic -get2()Lmokee/providers/MKSettings$Validator;
    .locals 1

    sget-object v0, Lmokee/providers/MKSettings;->sColorValidator:Lmokee/providers/MKSettings$Validator;

    return-object v0
.end method

.method static synthetic -get3()Lmokee/providers/MKSettings$Validator;
    .locals 1

    sget-object v0, Lmokee/providers/MKSettings;->sNonNegativeIntegerValidator:Lmokee/providers/MKSettings$Validator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 301
    new-instance v0, Lmokee/providers/MKSettings$DiscreteValueValidator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lmokee/providers/MKSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 300
    sput-object v0, Lmokee/providers/MKSettings;->sBooleanValidator:Lmokee/providers/MKSettings$Validator;

    .line 303
    new-instance v0, Lmokee/providers/MKSettings$1;

    invoke-direct {v0}, Lmokee/providers/MKSettings$1;-><init>()V

    sput-object v0, Lmokee/providers/MKSettings;->sNonNegativeIntegerValidator:Lmokee/providers/MKSettings$Validator;

    .line 314
    new-instance v0, Lmokee/providers/MKSettings$2;

    invoke-direct {v0}, Lmokee/providers/MKSettings$2;-><init>()V

    sput-object v0, Lmokee/providers/MKSettings;->sUriValidator:Lmokee/providers/MKSettings$Validator;

    .line 327
    new-instance v0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 326
    sput-object v0, Lmokee/providers/MKSettings;->sColorValidator:Lmokee/providers/MKSettings$Validator;

    .line 329
    new-instance v0, Lmokee/providers/MKSettings$3;

    invoke-direct {v0}, Lmokee/providers/MKSettings$3;-><init>()V

    sput-object v0, Lmokee/providers/MKSettings;->sAlwaysTrueValidator:Lmokee/providers/MKSettings$Validator;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
