.class public final Lcom/mokee/security/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field public static final BLACKLISTED_APPLICATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MOKEE_APP_SIGNATURE:Ljava/lang/String;

.field protected static final WHITELISTED_APPLICATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:[Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/16 v0, 0x8

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v3, "A9\u00ee\u00d3\u001dn\u008dF0\u00e5\u00a1k\u0018\u00ff4N#\u0012g\u00b1\u00ceN4\u00d4\u0016d\u00b9\u00ceH5\u00df\u0003g\u00b5\u0084\u0007+\u00da\u0012c\u00bd\u0087L2\u00d5\u0002|\u00bd\u008cE>\u00c9\u0010\u0012g\u00b1\u00ceD4\u00d0\u0014m\u00f2\u0083L5\u00cf\u0014z\u0017\u0006m\u00be\u0089Gu\u00dd\u0004k\u00b7\u00bfD4\u00d0\u0014m\u0083\u008dF?\u00ce\u001dm\u0786B8\u00e4\u00d2\u0019h\u00d9\u0017;\u00ec\u00d8\u001bk\u0089\u0010?\u00bd\u00d0\u0019h\u008bC8\u00ed\u00d0\u001bk\u0089A<\u00ef\u00d2\u0011m\u008d\u0014:\u00b9\u00d3\u0019k\u00dfA>\u00ec\u00d9\u001b:\u0083G<\u00e4\u00d8\u001f=\u008cAl\u00ec\u00d1\u0019j\u008b\u00138\u00e9\u00d0\u0019h\u008bI9\u00e4\u0085\u001aj\u008b\u0013;\u00ec\u00d0\u0010k\u008dA;\u00e9\u00d5\u0019o\u008bG9\u00ef\u00d0\u001bo\u0088Em\u00ef\u00d1\u0018j\u0088A8\u00ba\u00d0\u001fk\u0088D=\u00ec\u00d4\u0019c\u008aB8\u00e4\u00d5\u001am\u0083G9\u00ea\u0085\u001fl\u008fI>\u00ed\u00d6\u0010h\u008a@9\u00ef\u00d0\u0019=\u008bG8\u00ef\u00d5\u001ck\u008fA?\u00ed\u00d3\u0019c\u008eB>\u00e4\u00d6\u0018m\u00deG?\u00e8\u00d8\u001fj\u008dH;\u00ed\u00d1Lh\u008b@k\u00ec\u00d6\u0019h\u008eD8\u00e8\u00d0Hj\u0088@=\u00e8\u0084\u001f=\u008f\u0013>\u00e9\u00d6\u001ci\u008bEn\u00eb\u00d0\u001fn\u008d\u0014=\u00ef\u00d6Ol\u008eF:\u00ea\u00d3\u001fn\u0089A=\u00e8\u00d6\u001cm\u008aGl\u00ef\u00d1\u0018>\u0088A9\u00bf\u00d0\u001fk\u0088D=\u00ec\u00d4\u00199\u008aB9\u00e9\u00d4Mm\u00ddEj\u00ea\u00d5\u001fn\u0089A<\u00ba\u00d7\u0019m\u008eGm\u00e9\u00d3\u001f=\u008cD?\u00ee\u00d6\u001am\u008eC8\u00e9\u00d4\u001fn\u008d@>\u00b8\u00d3\u0018j\u0082B8\u00ed\u00d7\u0019m\u008bB=\u00e9\u00d0\u001dk\u0088@;\u00ed\u00d0\u001d?\u008d\u0017<\u00be\u00d6\u001cm\u008eC8\u00e8\u0086\u001ek\u008dD>\u00b9\u00d5\u001am\u00ddF=\u00eb\u00d2\u001fh\u008dD;\u00ec\u00d2\u0019j\u008cAl\u00ef\u00d1\u001ao\u0088A;\u00eb\u00d3\u0018h\u008cB8\u00ef\u00d6\u001aj\u0088D;\u00e8\u00d3\u001fn\u00da@0\u00ec\u0086\u001ai\u0088@;\u00ee\u00d3\u001dh\u008bB9\u00ef\u00d2\u001ai\u0088A;\u00ea\u00d3\u0018h\u008eB<\u00ef\u00d6\u001c:\u0088A0\u00ed\u00d8Lh\u008aAj\u00ef\u00d0\u0019b\u008bG8\u00ef\u00d5\u001ck\u008fA>\u00ed\u00d3\u0019i\u008fB<\u00b9\u00d3\u0018j\u008aB8\u00ec\u0086\u0019m\u008bB=\u00e9\u00d0\u001dk\u0083@;\u00ec\u00d8\u001ch\u008dI>\u00ed\u00d6Lm\u008cE0\u00ea\u00d1\u001fb\u0088@9\u00ed\u00d3\u0019k\u00ddA>\u00ec\u00d3\u001cn\u008bE8\u00eb\u00d1\u001ak\u0083D;\u00ea\u00d8\u001fj\u008d\u0014>\u00eb\u00d4\u0011m\u008aG1\u00ef\u00d1\u0018>\u0088A9\u00bf\u00d0\u001fk\u0088D=\u00ec\u00d4\u0019:\u008aB9\u00e9\u00d4Mm\u00ddEj\u00ea\u00d5\u001fn\u0089A<\u00ba\u00d7\u0019m\u008eGm\u00e9\u00d3\u001f=\u008cD?\u00ee\u00d6\u001am\u008eC8\u00e9\u00d4\u001fn\u008d@>\u00b8\u00d3\u0018j\u00deB8\u00ed\u0083\u0019m\u008bB=\u00e9\u00d0\u001dk\u00d9@;\u00ed\u00d5\u001d?\u008d\u0017<\u00be\u00d6\u001cm\u008eC8\u00e8\u0086\u001ek\u008dD>\u00b9\u00d5\u001am\u00ddF=\u00eb\u00d2\u001fh\u008dD:\u00ec\u00d5\u001dm\u008eG9\u00ea\u0084\u001aj\u008aH;\u00ec\u00d1\u001ek\u008dA;\u00e9\u00d5\u0019o\u008bB9\u00ef\u00d1\u0019o\u00dfGn\u00e8\u0082\u001fn\u008dD:\u00ec\u00d4Ol\u008bG=\u00ea\u0085\u001ch\u008d\u0017?\u00e9\u00d7\u001bm\u0088G=\u00ef\u00d0\u0011i\u008b@:\u00ee\u00d3\u0019k\u00dfA>\u00ec\u00d9\u001b:\u0083G<\u00e4\u00d8\u001f=\u008cAl\u00ec\u00d1\u0019j\u008b@8\u00e9\u00d0\u0019k\u0088I:\u00ec\u00d1\u0019=\u008bA;\u00ec\u00d8\u001bk\u008aAi\u00ec\u00d2\u0011i\u008b@8\u00ed\u00d0\u0019b\u008c\u0015>\u00ee\u00d6\u001a?\u008d\u0013n\u00b9\u0083\u001co\u008a\u0013=\u00bf\u0082\u0018l\u0088Bl\u00e9\u00d5Hc\u008eA0\u00ba\u00d5H8\u00da\u0014i\u00e9\u00d6\u0010c\u008dFj\u00e5\u0082\u001a9\u00da\u0013=\u00bd\u0086K8\u00d9Hi\u00e5\u0083\u001al\u008cF0\u00e4\u00d1\u0011=\u0088\u0014i\u00ef\u00d0Om\u00de@l\u00be\u00d1\u001e:\u0089\u0017?\u00e8\u00d5K8\u0088Di\u00ba\u00d4J>\u00d9\u0012i\u00e5\u00d5\u001e?\u00dfAi\u00e9\u0083\u001a8\u00dfF:\u00e5\u00d4\u0018=\u008a\u0012j\u00be\u0085\u0018h\u00da\u00108\u00be\u00d3\u001b8\u00d9\u0017n\u00bd\u00d2\u001ab\u0089F9\u00b9\u00d7Lm\u008d\u0013?\u00be\u00d4M>\u0082@;\u00eb\u00d2\u0018h\u00ddE;\u00ed\u0081\u0019h\u0088\u0014=\u00ed\u00d2Kl\u00daE?\u00bd\u0081Kn\u008f\u0010=\u00bd\u00d7Mb\u008eE<\u00bf\u00d1\u0010l\u00deF0\u00bd\u00d5\u001fb\u0088A?\u00e4\u0085\u001an\u0088G<\u00bf\u0083H8\u00d8Il\u00be\u00d9\u001bh\u008aG8\u00e9\u0086M?\u00df\u0017<\u00ef\u00d5\u001eb\u00de\u00158\u00ef\u00d9\u001d>\u008dEj\u00ea\u0083Lm\u0082H9\u00ea\u00d2Kk\u00d9A8\u00ec\u00d4\u001b?\u00dd\u0013;\u00ec\u00d3Jc\u00d8I<\u00bd\u00d3\u0018=\u00dfF<\u00bf\u0084\u001dk\u00dd\u0017k\u00ef\u00d5Jk\u008bA>\u00ec\u0085\u001d8\u00d8\u0010l\u00bd\u00d4\u001cc\u00da\u00140\u00ba\u0086\u0019?\u0089Hk\u00be\u00d4\u001cn\u008fI;\u00b9\u00d7Kj\u008f\u0010l\u00ba\u00d9\u0019o\u008c@m\u00e4\u0085\u0010l\u00daH8\u00bf\u0083\u001a9\u0082G=\u00be\u00d0Kn\u008a\u0017j\u00be\u0083\u001ei\u0088C<\u00ed\u0083\u001am\u008fG1\u00b8\u0085\u0018c\u00d8A:\u00ed\u00d0Ok\u0083\u0017l\u00ea\u0084L=\u00dd\u00120\u00ba\u00d4\u001am\u008dDm\u00bd\u0086\u001d8\u008bA8\u00e8\u00d7\u001a:\u008fAl\u00ba\u0082\u001bh\u008e\u0010;\u00e5\u0082\u001a=\u0088\u0012<\u00e4\u00d7O9\u00d8Gi\u00ec\u00d0\u0018=\u0082@;\u00be\u0086\u001bm\u008e@k\u00bd\u0084\u0010:\u008bDn\u00bd\u0083Kn\u00daD>\u00eb\u00d3\u001a9\u008bFi\u00ec\u00d2\u001ci\u008aC8\u00bf\u0084\u0018>\u008d\u0015;\u00bf\u00d3\u001eh\u00d9\u0015k\u00b9\u00d7\u001an\u00de@=\u00e5\u00d8\u001f9\u00da\u0012<\u00eb\u0083\u0011l\u008bC8\u00ef\u00d0\u0018k\u008bA9\u00bd\u00d3\u001bj\u0088A9\u00ba\u00d3\u0019j\u00dfA>\u00ec\u00d3\u001cn\u008a\u00158\u00b9\u00d0\u001dj\u008dA<\u00ed\u00d4\u0018>\u00d8\u00121\u00bd\u0082Ll\u0088E8\u00ed\u00d7\u001fh\u008fEi\u00eb\u00d5\u001a>\u00d8B<\u00ec\u0086Kb\u008a\u00130\u00eb\u0086\u001am\u00d9\u00140\u00ef\u00d0\u0019?\u008bG8\u00e5\u00d2Hc\u008dE0\u00e4\u00d6Ol\u008b\u00158\u00ed\u00d0\u0018k\u00d9A=\u00ec\u00d0\u0019h\u0083C8\u00ed\u00d0\u0018k\u008bFk\u00ef\u00d4\u001aj\u008a\u0015i\u00e4\u0083Mk\u008fIk\u00b8\u00d1Km\u008dC>\u00ee\u00d9Hn\u00deH:\u00ee\u0082\u0010m\u008fFi\u00b9\u00d8\u001bb\u008cIk\u00eb\u00d2L?\u008fFj\u00e4\u00d2\u001fh\u008bCk\u00ea\u0082\u001e?\u008a\u0014j\u00ef\u00d7Ki\u008a\u0013;\u00ef\u0084Mn\u008cG:\u00ec\u0084K:\u00ddH:\u00e4\u0084Mm\u008bF<\u00e4\u00d6\u00118\u008bB;\u00e5\u00d1Mn\u008bA;\u00ee\u0085Lc\u008dH=\u00e8\u00d1\u001fi\u00d9D=\u00e4\u00d1M?\u0088\u00131\u00b8\u0081\u001a8\u008c\u0013n\u00e4\u00d0\u001ao\u0089\u00151\u00e4\u0085Mi\u008bI1\u00ed\u0086\u0010n\u008cHk\u00e5\u00d5\u001em\u0088\u0017n\u00ba\u0083Hh\u008a\u0015>\u00ed\u00d1H9\u008aC=\u00eb\u00d4J8\u0083Ai\u00be\u00d3\u0011b\u0089\u0017?\u00bf\u00d5Oc\u008bE8\u00e9\u0085Hb\u00deFk\u00e4\u0085\u001c>\u00ddCj\u00ee\u00d8\u001fi\u0082\u0010j\u00e9\u00d5O:\u008c\u0013<\u00b8\u00d9Oo\u0088B;\u00e5\u00d4\u0010l\u008dF:\u00bd\u00d6Hl\u00dd\u0013j\u00e9\u0086Mi\u0082@=\u00e9\u0086Kc\u00df\u0014j\u00ec\u00d4\u001eb\u008fA=\u00bd\u00d9K8\u008bEi\u00be\u00d6Kb\u0089\u0015l\u00ee\u00d8Oc\u00ddH?\u00e5\u0083J9\u008f\u0012k\u00eb\u00d3Hm\u008bI:\u00be\u00d2\u001d?\u008dF:\u00ea\u00d1L8\u008bIm\u00e5\u0086\u0011n\u0083C0\u00bd\u0083J:\u00dfI8\u00b8\u00d5Om\u008fC;\u00b9\u00d8Jo\u00de\u00109\u00ee\u00d5\u0010o\u008d\u0014m\u00e9\u00d9Ln\u008e\u0015j\u00ee\u00d0Ml\u008fF<\u00bd\u0085\u0019j\u0088G0\u00eb\u00d3\u0019:\u00da\u0012k\u00ec\u00d8H?\u00df\u0012?\u00b9\u00d9\u0018m\u008eE8\u00e4\u00d5\u001d=\u0089\u0014<\u00e9\u00d2\u0010b\u008bDl\u00ec\u0084Jn\u00de\u0012j\u00ec\u00d9Ki\u00df@n\u00bf\u00d5Li\u00d8G;\u00ba\u00d7\u001eh\u008fEk\u00e4\u0081\u001bj\u00dfD>\u00e5\u00d6\u00119\u00d8E=\u00b9\u0082\u001c:\u008a\u0012j\u00bd\u00d7\u0018c\u00daH?\u00e5\u00d1L:\u008f\u0012;\u00b8\u00d0\u001bb\u008eIm\u00b8\u00d7\u0019=\u00dd\u0010;\u00ed\u00d1Kk\u00daG:\u00be\u0083\u001bb\u0089\u00141\u00ec\u00d5\u001fm\u0083G<\u00e9\u0086Jo\u008f\u0014\u000e\u0006m\u00be\u00d1Gu\u00f6:&\u0088\u0095G>\u00c9"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x10

    move-object v4, v3

    move v5, v6

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int v7, v0, v2

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move-object v5, v7

    move v7, v2

    move v2, v0

    move v0, v1

    :goto_1
    invoke-static {v5}, Lcom/mokee/security/SecurityUtils;->a(Ljava/lang/String;)[C

    move-result-object v5

    invoke-static {v5}, Lcom/mokee/security/SecurityUtils;->a([C)Ljava/lang/String;

    move-result-object v10

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v5, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v2, v7

    if-lt v0, v3, :cond_0

    const-string/jumbo v4, "\u001ez\u00bb\u00ceD4\u00d0\u0014m\u00f2\u0097L:\u00cf\u0019m\u00ae\u0090[4\u00cd\u0018l\u00b9\u0092\u000e\u001cg\u00b7\u0085Lv\u00c8\u0014k\u00a9\u0092@/\u00c2"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x19

    move v2, v0

    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v7, v0, v2

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move-object v5, v7

    move v7, v2

    move v2, v0

    move v0, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v5, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v2, v7

    if-lt v0, v3, :cond_1

    sput-object v9, Lcom/mokee/security/SecurityUtils;->a:[Ljava/lang/String;

    sget-object v0, Lcom/mokee/security/SecurityUtils;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sput-object v0, Lcom/mokee/security/SecurityUtils;->MOKEE_APP_SIGNATURE:Ljava/lang/String;

    new-array v0, v13, [Ljava/lang/String;

    sget-object v1, Lcom/mokee/security/SecurityUtils;->a:[Ljava/lang/String;

    aget-object v2, v1, v11

    aput-object v2, v0, v6

    aget-object v2, v1, v13

    aput-object v2, v0, v11

    const/4 v2, 0x5

    aget-object v2, v1, v2

    aput-object v2, v0, v12

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mokee/security/SecurityUtils;->BLACKLISTED_APPLICATIONS:Ljava/util/List;

    new-array v0, v12, [Ljava/lang/String;

    aget-object v2, v1, v12

    aput-object v2, v0, v6

    const/4 v2, 0x6

    aget-object v2, v1, v2

    aput-object v2, v0, v11

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mokee/security/SecurityUtils;->WHITELISTED_APPLICATIONS:Ljava/util/List;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/mokee/security/SecurityUtils;->b:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    if-nez v1, :cond_0

    :goto_0
    if-ge v0, v4, :cond_1

    :cond_0
    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a([C)Ljava/lang/String;
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-le v2, v1, :cond_0

    aget-char v3, p0, v1

    rem-int/lit8 v0, v1, 0x7

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xbb

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x71

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xdc

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xe0

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x29

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x5b

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mokee/security/SecurityUtils;->a:[Ljava/lang/String;

    aget-object v1, v0, v3

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v0, v0, v3

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-char v1, v0, v3

    xor-int/lit16 v1, v1, 0xbb

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method public static authorized()Z
    .locals 2

    sget-object v0, Lcom/mokee/security/SecurityUtils;->WHITELISTED_APPLICATIONS:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static authorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, p1}, Lcom/mokee/security/SecurityUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method protected static declared-synchronized getOpenWeatherMapAPIKey()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/mokee/security/SecurityUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/mokee/security/SecurityUtils;->nativeGetOpenWeatherMapAPIKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static declared-synchronized getPrivateRSAPrivKey()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/mokee/security/SecurityUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/mokee/security/SecurityUtils;->nativeGetPrivateRSAPrivKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static declared-synchronized getPrivateRSAPubKey()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/mokee/security/SecurityUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/mokee/security/SecurityUtils;->nativeGetPrivateRSAPubKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native nativeGetOpenWeatherMapAPIKey()Ljava/lang/String;
.end method

.method private static native nativeGetPrivateRSAPrivKey()Ljava/lang/String;
.end method

.method private static native nativeGetPrivateRSAPubKey()Ljava/lang/String;
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget-boolean v2, Lcom/mokee/security/SecurityUtils;->b:Z

    new-array v3, v1, [B

    if-nez v2, :cond_0

    :goto_0
    if-ge v0, v1, :cond_1

    :cond_0
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/mokee/security/SecurityUtils;->b:Z

    if-eqz p0, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    if-nez v1, :cond_0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    :cond_0
    aget-byte v1, p0, v0

    invoke-static {v2, v1}, Lcom/mokee/security/SecurityUtils;->a(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
