.class public Lcom/mokee/security/License;
.super Ljava/lang/Object;
.source "License.java"


# static fields
.field public static final MOKEE_LICENSE_AUTH_APP_NAME:Ljava/lang/String;

.field public static final MOKEE_LICENSE_AUTH_FILE_PATH:Ljava/lang/String;

.field public static final MOKEE_LICENSE_VERSION:I = 0x1

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v3, 0xd

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x4

    new-array v10, v0, [Ljava/lang/String;

    const-string/jumbo v2, "\u00a5\u00e3h5\u0080\u00bd\u00aa\u00a1\u00eff>\u0096\u00f6\u0786\u00fb\u00bc;b\u00d5\u00a0\u00a4\u00ae\u00bf3h\u00d7\u00a3\u00f4\u00a9\u00bbb`\u00d5\u00a0\u00f6\u00fa\u00bc2`\u00d7\u00a3\u00f4\u00f8\u00b80b\u00dd\u00a5\u00f0\u00ad\u00befc\u00d5\u00a3\u00a2\u00f8\u00ba3i\u00d7\u00f2\u00fe\u00fe\u00b8;h\u00d3\u00f5\u00f1\u00f8\u00e83a\u00d5\u00a2\u00f6\u00aa\u00bc6`\u00d5\u00a0\u00f6\u00f0\u00bd;5\u00d6\u00a2\u00f6\u00aa\u00bf3`\u00dc\u00a3\u00f0\u00f8\u00bf6e\u00d5\u00a7\u00f6\u00fe\u00bd0`\u00d7\u00a7\u00f5\u00fc\u00e90a\u00d4\u00a2\u00f5\u00f8\u00bce`\u00d3\u00a3\u00f5\u00fd\u00b93d\u00d5\u00ab\u00f7\u00fb\u00bc;e\u00d6\u00a5\u00fe\u00fe\u00bd55\u00d3\u00a4\u00f2\u00f0\u00ba2f\u00dc\u00a0\u00f7\u00f9\u00bd0`\u00d5\u00f5\u00f6\u00fe\u00bc0e\u00d0\u00a3\u00f2\u00f8\u00bb2c\u00d5\u00ab\u00f3\u00fb\u00ba;f\u00d4\u00a5\u00a3\u00fe\u00bb7h\u00d3\u00a2\u00f0\u00f1\u00bf2a\u0080\u00a0\u00f6\u00f9\u00ef3f\u00d5\u00a0\u00f3\u00fd\u00bc7`\u0084\u00a2\u00f5\u00f9\u00b974\u00d3\u00f5\u00f2\u00aa\u00ba6f\u00d0\u00a1\u00f6\u00fc\u00ea4`\u00d3\u00a6\u00f0\u00ad\u00b90f\u0083\u00a4\u00f3\u00ff\u00be5c\u00d3\u00a6\u00f4\u00f8\u00b97f\u00d0\u00a5\u00f7\u00fe\u00e80a\u00d4\u00f6\u00f5\u00f8\u00bd``\u00d3\u00a3\u00f5\u00fd\u00b93d\u00d5\u00f1\u00f7\u00fb\u00bd6d\u0081\u00a5\u00a0\u00fc\u00ee5e\u00d3\u00a6\u00f4\u00f8\u00b8eg\u00d5\u00a5\u00f3\u00fe\u00e96c\u00d3\u00f5\u00f1\u00fd\u00bb1f\u00d6\u00a5\u00f3\u00fa\u00bc6d\u00d3\u00a6\u00f0\u00f9\u00bagc\u00d4\u00a2\u00ff\u00fb\u00bc2g\u00d5\u00a5\u00f6\u00fb\u00b96`\u00d1\u00a3\u00f5\u00f9\u00bf2`\u00d1\u00f7\u00f0\u00ae\u00b8af\u00d0\u00a5\u00f3\u00fa\u00bc76\u00d2\u00a3\u00f0\u00fd\u00bafe\u00d6\u00a5\u00a0\u00ff\u00b94b\u00d3\u00a0\u00f0\u00fd\u00bf3b\u00d5\u00a2\u00f1\u00f8\u00e80a\u00d6\u00a7\u00f5\u00f8\u00bf4c\u00d4\u00a0\u00f1\u00fb\u00bc0f\u00d6\u00a2\u00f5\u00fd\u00bf7c\u00d3\u00a6\u00a7\u00f9\u00b436\u00d6\u00a1\u00f5\u00f9\u00bf1c\u00d1\u00a0\u00f6\u00fb\u00bd0b\u00d6\u00a1\u00f5\u00f8\u00bf5c\u00d4\u00a0\u00f3\u00fb\u00b80f\u00d0\u00f2\u00f5\u00f8\u00b42h\u0080\u00a0\u00f7\u00f8\u00ee0`\u00d5\u00aa\u00f6\u00fe\u00bc0e\u00d0\u00a3\u00f2\u00f8\u00ba2c\u00d5\u00a1\u00f2\u00fb\u00b8fc\u00d4\u00a2\u00f7\u00fb\u00bc36\u00d5\u00a5\u00f6\u00fb\u00b96`\u00d1\u00a3\u00fe\u00f9\u00bf3h\u00d0\u00a0\u00f0\u00f0\u00ba2f\u0080\u00a5\u00f1\u00fc\u00b45a\u00d3\u00aa\u00f5\u00f9\u00bd2c\u00d5\u00a3\u00a0\u00f8\u00ba3c\u00d0\u00a6\u00f6\u00fc\u00bc4a\u00d6\u00a3\u00fe\u00fd\u00bf5h\u00d3\u00a2\u00f0\u00ad\u00ba4d\u00dd\u00a5\u00f7\u00fe\u00b50a\u00d4\u00f6\u00f5\u00f8\u00bd``\u00d3\u00a3\u00f5\u00fd\u00b93d\u00d5\u00f2\u00f7\u00fb\u00bd6d\u0081\u00a5\u00a0\u00fc\u00ee5e\u00d3\u00a6\u00f4\u00f8\u00b8eg\u00d5\u00a5\u00f3\u00fe\u00e96c\u00d3\u00f5\u00f1\u00fd\u00bb1f\u00d6\u00a5\u00f3\u00fa\u00bc6d\u00d3\u00a6\u00f0\u00f9\u00bagc\u00d4\u00a2\u00a3\u00fb\u00bc23\u00d5\u00a5\u00f6\u00fb\u00b96`\u00d1\u00a3\u00a4\u00f9\u00bf2e\u00d1\u00f7\u00f0\u00ae\u00b8af\u00d0\u00a5\u00f3\u00fa\u00bc76\u00d2\u00a3\u00f0\u00fd\u00bafe\u00d6\u00a5\u00a0\u00ff\u00b94b\u00d3\u00a0\u00f0\u00fd\u00be3e\u00d1\u00a5\u00f3\u00fe\u00bd54\u00d6\u00a2\u00f7\u00f1\u00bf3a\u00d2\u00a3\u00f0\u00f8\u00bf6e\u00d5\u00a7\u00f6\u00fb\u00bd0a\u00d5\u00a7\u00a2\u00fe\u00ea72\u00d3\u00a6\u00f0\u00fd\u00be3d\u0083\u00a4\u00f6\u00fe\u00b955\u00d0\u00a0\u00f0\u00ae\u00bb6g\u00d7\u00a5\u00f5\u00fe\u00b90`\u00dd\u00a1\u00f6\u00f9\u00be1c\u00d5\u00a3\u00a2\u00f8\u00ba3i\u00d7\u00f2\u00fe\u00fe\u00b8;h\u00d3\u00f5\u00f1\u00f8\u00e83a\u00d5\u00a2\u00f6\u00f9\u00bc6`\u00d5\u00a3\u00f5\u00f0\u00be3a\u00d5\u00f5\u00f6\u00f8\u00bf3h\u00d7\u00a3\u00f7\u00f8\u00ed3b\u00dd\u00a1\u00f6\u00f9\u00bc2`\u00d5\u00aa\u00f1\u00ac\u00ba1f\u00d6\u00f7\u00f0\u00aa\u00eaf3\u00d0\u00a7\u00f7\u00aa\u00b9`2\u00d4\u00a4\u00f5\u00fb\u00e86e\u0084\u00ab\u00f3\u00f8\u00b4ee\u0084\u00f0\u00a7\u00ad\u00ed6f\u00dc\u00ab\u00f0\u00ff\u00ee:2\u00d6\u00f1\u00a7\u00aa\u00b9b6\u0087\u00f0\u00a4\u00f1\u00ed:3\u00d6\u00a4\u00f1\u00ff\u00b4;a\u00dd\u00f5\u00f5\u00ad\u00ed0`\u0083\u00a5\u00a3\u00f9\u00e8aa\u00d2\u00f2\u00f4\u00ae\u00bb7e\u0087\u00f0\u00f5\u00fd\u00eded\u0086\u00f6\u00a4\u00ab\u00ed:e\u00d2\u00f7\u00a2\u00f8\u00ed63\u00d6\u00f0\u00a2\u00ff\u00be:d\u00d4\u00f5\u00f7\u00ab\u00eea5\u00d4\u00a0\u00a7\u00a9\u00bcac\u00d7\u00f0\u00a4\u00ae\u00eabb\u00d6\u00aa\u00f4\u00ff\u00bdfg\u0080\u00a5\u00f0\u00aa\u00bbad\u0081\u00f6\u00ff\u00f9\u00bf4b\u00d4\u00a0\u00a0\u00fc\u00bf21\u00d5\u00a0\u00f5\u00ad\u00b92b\u0087\u00a4\u00a7\u00fc\u00bbb1\u0087\u00a6\u00f2\u00a9\u00b9bg\u0081\u00aa\u00f3\u00fc\u00b8`a\u00dc\u00a4\u00a3\u00ff\u00b4be\u00d3\u00aa\u00f5\u00f8\u00bb;5\u00d6\u00a6\u00f5\u00fe\u00b8`3\u0084\u00f0\u00a5\u00f0\u00e8ai\u00d7\u00a0\u00f7\u00fe\u00bc66\u0081\u00f7\u00a2\u00ae\u00b80e\u00d2\u00aa\u00a3\u00ac\u00bc0i\u00d1\u00f6\u00f0\u00fc\u00ee53\u0080\u00a5\u00ff\u00f1\u00bd5b\u0087\u00a3\u00a4\u00f8\u00bc3d\u00d7\u00f7\u00a0\u00aa\u00bf3c\u0086\u00ab\u00a5\u00f0\u00b8bc\u00d4\u00f5\u00a2\u00ff\u00b8`4\u00d1\u00a3\u00a0\u00ae\u00ef0e\u0086\u00a3\u00f6\u00f8\u00ba35\u00d1\u00f0\u00a5\u00a9\u00e8bd\u00d0\u00ab\u00a7\u00ad\u00b4e6\u00d5\u00f7\u00f4\u00f1\u00efad\u00d0\u00a6\u00f2\u00f0\u00bffg\u0087\u00a2\u00f2\u00a9\u00e8ei\u00d5\u00a7\u00f1\u00f9\u00e9;5\u00dc\u00a4\u00a7\u00f1\u00bc`3\u00d6\u00f1\u00ff\u00fe\u00b9a`\u0087\u00a6\u00f7\u00ae\u00eea3\u00d2\u00a1\u00f5\u00fa\u00b823\u00d6\u00a5\u00f2\u00fe\u00b5g5\u00d4\u00ab\u00a5\u00f8\u00be2`\u0083\u00a3\u00fe\u00ae\u00e854\u0080\u00f5\u00a0\u00ab\u00b4ed\u00d6\u00a5\u00f0\u00fd\u00e9b6\u00d1\u00f0\u00f6\u00f8\u00bc7g\u00d6\u00f2\u00f2\u00f8\u00e8e2\u00d7\u00a0\u00f3\u00a9\u00bf:2\u00d6\u00f5\u00f5\u00ab\u00b8;g\u0083\u00f1\u00a5\u00fe\u00ed3`\u00d4\u00f5\u00ff\u00f9\u00bfa6\u00d7\u00a5\u00f3\u00f9\u00efb4\u00dc\u00f2\u00f6\u00fd\u00eab3\u0087\u00a6\u00a7\u00fd\u00ba4c\u00d6\u00f1\u00f6\u00ff\u00ed3b\u00d0\u00a1\u00f7\u00fa\u00bc`4\u00d4\u00f6\u00f0\u00ac\u00bf`c\u00d2\u00a0\u00a4\u00ac\u00effg\u00d6\u00a6\u00a3\u00f9\u00b9:h\u00d3\u00f1\u00a7\u00ab\u00b843\u00dd\u00a4\u00f6\u00fa\u00bc0`\u00d4\u00a3\u00f6\u00f8\u00bdbc\u00d7\u00a2\u00f5\u00f8\u00bdec\u00d5\u00a2\u00a2\u00f8\u00ba3c\u00d0\u00a6\u00f7\u00ac\u00bcf`\u00d1\u00a2\u00f0\u00f8\u00b82d\u00d4\u00f6\u00a5\u00ab\u00b5b2\u0080\u00a4\u00f5\u00fc\u00bc2g\u00d3\u00a0\u00f2\u00fc\u00ed4e\u00d6\u00f6\u00a5\u00fb\u00b836\u0087\u00aa\u00f7\u00aa\u00b446\u00d6\u00a5\u00a4\u00ad\u00b40`\u00d5\u00f7\u00f6\u00fe\u00bc:b\u0084\u00ab\u00f0\u00fc\u00b4;f\u0083\u00a4\u00f6\u00ac\u00bc2`\u00d4\u00a3\u00a4\u00f8\u00b93`\u00d5\u00a0\u00fe\u00fa\u00bc2`\u00d4\u00a3\u00f6\u00ff\u00ef0d\u00d6\u00a2\u00f7\u00ac\u00ed;3\u0081\u00a3\u00f2\u00f0\u00efga\u0087\u00a5\u00f0\u00fa\u00ba1i\u0084\u00a6\u00a3\u00f1\u00be12\u00dc\u00a5\u00f2\u00ff\u00edfh\u00d7\u00aa\u00f1\u00f0\u00ef4b\u0080\u00f7\u00f2\u00ff\u00ee;b\u00d3\u00a0\u00f6\u00fa\u00ef52\u00d2\u00f7\u00f7\u00ad\u00ee0g\u0087\u00a1\u00f7\u00aa\u00bf04\u0081\u00a6\u00f1\u00fe\u00be34\u0087\u00f2\u00a0\u00f1\u00be;4\u0081\u00a5\u00f6\u00ff\u00b8;f\u00dd\u00f0\u00f6\u00fb\u00bf:a\u0081\u00a6\u00f6\u00f8\u00bf15\u0080\u00ab\u00f0\u00f1\u00b97a\u00d3\u00a1\u00a4\u00fd\u00b9;a\u0081\u00f7\u00f5\u00aa\u00b5g1\u00d6\u00f0\u00f1\u00aa\u00ea;`\u00d6\u00a7\u00f4\u00ac\u00b5;5\u0081\u00a1\u00f6\u00f0\u00b526\u00dc\u00a6\u00f1\u00f1\u00ef:e\u00d2\u00a5\u00f5\u00ae\u00eae3\u0084\u00a0\u00f7\u00ac\u00ba2a\u0084\u00f1\u00f7\u00fa\u00b94d\u0086\u00f0\u00fe\u00f8\u00edac\u00dd\u00aa\u00f4\u00ae\u00bb`e\u0083\u00ab\u00f6\u00fc\u00bc65\u0084\u00aa\u00a3\u00ff\u00ef;5\u00d0\u00f6\u00a0\u00fa\u00ee1h\u00d3\u00a1\u00ff\u00a9\u00ee6e\u0083\u00f2\u00f1\u00aa\u00b8gi\u0083\u00a7\u00f5\u00fb\u00bf:d\u00dc\u00a4\u00f0\u00ff\u00bebf\u0084\u00a4\u00a0\u00aa\u00ee66\u0081\u00a1\u00ff\u00f9\u00b966\u0087\u00ab\u00a2\u00ad\u00ee3d\u00d2\u00aa\u00f2\u00f8\u00b9bi\u0087\u00f0\u00f6\u00fc\u00edaf\u0087\u00aa\u00f4\u00ac\u00e81h\u0083\u00ab\u00a0\u00f1\u00bb:3\u0086\u00f1\u00f2\u00ab\u00ef4c\u0084\u00a5\u00f6\u00f0\u00beab\u00d1\u00f7\u00f0\u00ff\u00be5a\u0080\u00f0\u00f6\u00f0\u00e9:6\u00dd\u00a6\u00fe\u00fa\u00b4b3\u0086\u00f2\u00a2\u00f0\u00bcge\u0083\u00a5\u00f2\u00fa\u00bffh\u0086\u00a7\u00a3\u00a9\u00bd1e\u00dc\u00a7\u00f0\u00ad\u00e96i\u0080\u00a6\u00f3\u00ac\u00ee1`\u0081\u00a4\u00f2\u00ff\u00b8b5\u00d5\u00a2\u00f5\u00fe\u00b44c\u00d5\u00f2\u00a7\u00ab\u00ef3h\u0084\u00f7\u00a2\u00ab\u00bbfi\u00d4\u00a5\u00f3\u00fc\u00bc;e\u00d1\u00f5\u00f4\u00ad\u00b86b\u00dc\u00aa\u00f6\u00fd\u00e834\u0086\u00a6\u00a3\u00ab\u00ee3i\u0087\u00a1\u00a2\u00f9\u00ea`e\u0080\u00a1\u00a5\u00fe\u00bfeg\u00d2\u00a0\u00f2\u00fc\u00ef;1\u00d7\u00a2\u00a2\u00fd\u00ba:f\u00dd\u00f1\u00a5\u00fc\u00b9f2\u00d0\u00f2\u00f7\u00ab\u00eebg\u00d4\u00ab\u00a7\u00f1\u00bb:a\u0080\u00f2\u00f2\u00ab\u00bfg`\u00d7\u00aa\u00f3\u00f0\u00e9gg\u00d5\u00f5\u00a0\u00a9\u00bf2a\u0087\u00a3\u00a7\u00fe\u00bea3\u00d7\u00aa\u00f4\u00ad\u00b53e\u00d3\u00a5\u00fe\u00fe\u00b866\u0086\u00a7\u00f2\u00ad"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    move-object v5, v2

    move v6, v7

    move v2, v3

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int v8, v0, v2

    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move v9, v6

    move-object v6, v8

    move v8, v2

    move v2, v0

    move v0, v1

    :goto_1
    invoke-static {v6}, Lcom/mokee/security/License;->a(Ljava/lang/String;)[C

    move-result-object v6

    invoke-static {v6}, Lcom/mokee/security/License;->a([C)Ljava/lang/String;

    move-result-object v11

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v6, v9, 0x1

    aput-object v11, v10, v9

    add-int v0, v2, v8

    if-lt v0, v4, :cond_0

    const-string/jumbo v5, "\u00ab\u00e3n~\u0088\u00fc\u00ad\u00ad\u00e9- \u0084\u00ea\u0010\u00ab\u00e3n~\u0088\u00fc\u00ad\u00ad\u00e9-3\u0080\u00fd\u00b2\u00ad\u00fe"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v1

    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v8, v0, v2

    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move v9, v6

    move-object v6, v8

    move v8, v2

    move v2, v0

    move v0, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v6, v9, 0x1

    aput-object v11, v10, v9

    add-int v0, v2, v8

    if-lt v0, v4, :cond_1

    sput-object v10, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    sget-object v0, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/mokee/security/License;->MOKEE_LICENSE_AUTH_APP_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/security/License;->MOKEE_LICENSE_AUTH_FILE_PATH:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

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

    const/16 v0, 0xc6

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xc8

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8c

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x50

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xe5

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x93

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

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

    xor-int/lit16 v1, v1, 0xc6

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method public static genLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p0, v1, v0}, Lcom/mokee/security/SecurityUtils;->authorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mokee/security/RSAUtils;->rsaEncryptByPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static getOpenWeatherMapAPIKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, p1, v0}, Lcom/mokee/security/SecurityUtils;->authorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mokee/security/SecurityUtils;->getOpenWeatherMapAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readLicense(Ljava/lang/String;Ljava/lang/String;)Lcom/mokee/security/LicenseInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/mokee/security/SecurityUtils;->b:Z

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/mokee/security/RSAUtils;->rsaDecryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mokee/security/LicenseInfo;

    invoke-direct {v4}, Lcom/mokee/security/LicenseInfo;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gt v5, v1, :cond_3

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mokee/security/LicenseInfo;->setVersion(I)V

    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string/jumbo v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-gt v0, v1, :cond_5

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Lcom/mokee/security/LicenseInfo;->setUniqueID(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    aget-object v0, v3, v6

    invoke-virtual {v4, v0}, Lcom/mokee/security/LicenseInfo;->setPackageName(Ljava/lang/String;)V

    aget-object v0, v3, v7

    invoke-virtual {v4, v0}, Lcom/mokee/security/LicenseInfo;->setDateTime(Ljava/lang/String;)V

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mokee/security/LicenseInfo;->setPrice(Ljava/lang/Float;)V

    :cond_2
    return-object v4

    :cond_3
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/mokee/security/LicenseInfo;->setVersion(I)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/mokee/security/LicenseInfo;->setUniqueID(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/mokee/security/LicenseInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/mokee/security/LicenseInfo;->setDateTime(Ljava/lang/String;)V

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mokee/security/LicenseInfo;->setPrice(Ljava/lang/Float;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_2

    :try_start_4
    sget-boolean v5, Lcom/mokee/aegis/PacifierInfo;->c:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v5, :cond_4

    move v0, v1

    :cond_4
    sput-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    throw v0

    :cond_5
    const/4 v0, 0x1

    :try_start_7
    aget-object v0, v3, v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Lcom/mokee/security/LicenseInfo;->setUniqueID(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v2, :cond_1

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    throw v0
.end method

.method public static timeVerified()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/mokee/os/Build;->BUILD_DATE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method
