#!/bin/bash
DIR="images"

# Shared
curl -sL "https://static.wixstatic.com/media/f9a6fc_2719068d76e641098f0623d7ca18723d~mv2.png" -o "$DIR/logo.png"
curl -sL "https://static.wixstatic.com/media/f9a6fc_b1e037fb1036452fa0a6312dd8ea7a30~mv2.jpg" -o "$DIR/hero-lighthouse.jpg"

# Homepage
curl -sL "https://static.wixstatic.com/media/930f05_6e6bc66990124be092294e0a3b3baa01~mv2.jpg" -o "$DIR/generational-advice.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_87cc25aa714b4e15ba35f60b9b3812f1~mv2.png" -o "$DIR/gemini-advisors.png"
curl -sL "https://static.wixstatic.com/media/930f05_c190cf25a0bd40ce9dc57da68cfbb8a1~mv2.png" -o "$DIR/gemini-institutional.png"
curl -sL "https://static.wixstatic.com/media/11062b_f3e1f28a989a40f3b3444dcc35260b86~mv2.jpg" -o "$DIR/strategies/reviewing-graphs.jpg"
curl -sL "https://static.wixstatic.com/media/11062b_9b52a0adb0ac4756a04a9e7aeaa7ce3d~mv2.jpeg" -o "$DIR/strategies/financial-report.jpg"
curl -sL "https://static.wixstatic.com/media/fb5e8ed1bf5c486db99df88043921446.jpg" -o "$DIR/strategies/construction-workers.jpg"
curl -sL "https://static.wixstatic.com/media/11062b_b50f8c8952004dad9df84d1f0792efe3~mv2_d_4208_2779_s_4_2.jpg" -o "$DIR/business-conference.jpg"
curl -sL "https://static.wixstatic.com/media/11062b_270474e153b64538a3f8c2d1dffcc472~mv2.jpeg" -o "$DIR/business-meeting.jpg"

# About page - group photo
curl -sL "https://static.wixstatic.com/media/930f05_3c6d2cce0aaf48b08bae48d946ac93e6~mv2.jpg" -o "$DIR/about-group.jpg"

# Team headshots
curl -sL "https://static.wixstatic.com/media/930f05_d17fa395f890405ca3f8ddcf2ea8b983~mv2.jpg" -o "$DIR/team/stefan.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_41289fd47c954f9dab334ed9625d704e~mv2.jpg" -o "$DIR/team/jonathan.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_95377afad7ca43d7b61c410a983514f1~mv2.jpg" -o "$DIR/team/evan.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_fd2238a082f54b5184fb20297f5cd601~mv2.jpg" -o "$DIR/team/jeff.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_1a248d665c1147e0a108bbef356d0af2~mv2.jpg" -o "$DIR/team/yifan.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_46b4d18fe95a40f19b9bcc2d442b1129~mv2.jpg" -o "$DIR/team/jody.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_469f4ac9ae124c8f99320366e1e6858e~mv2.png" -o "$DIR/team/john.png"
curl -sL "https://static.wixstatic.com/media/930f05_ca0e7045085e49158080a83bbfab8d5c~mv2.jpg" -o "$DIR/team/debra.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_7a92b24892f9492a8a88e0ae04fa9238~mv2.jpg" -o "$DIR/team/aldo.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_9015d0877fbb4ee1ac3acbd4f6e3cc07~mv2.jpg" -o "$DIR/team/travis-white-bg.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_636f353e0fd145cd841ba87b3e0bd41a~mv2.jpg" -o "$DIR/team/ryan.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_5ae56bc750394eab8b49ac13decbbb23~mv2.jpg" -o "$DIR/team/travis-hs.jpg"

# Philosophy page
curl -sL "https://static.wixstatic.com/media/8b8baa_50f0dc9ae1bf4a2abde347344510c949~mv2.png" -o "$DIR/v-shape.png"
curl -sL "https://static.wixstatic.com/media/8b8baa_4a51fa91adbc40e99774cce9d1f5cf3b~mv2.jpg" -o "$DIR/business-handshake.jpg"
curl -sL "https://static.wixstatic.com/media/8b8baa_0daeac04f5e24255abef0b0ca8c57c66~mv2.jpeg" -o "$DIR/warren-buffett.jpg"

# Private Capital
curl -sL "https://static.wixstatic.com/media/930f05_75c457a660ba428c875b0272b679ee47~mv2.png" -o "$DIR/investment-logos.png"

# Advisor Insights thumbnails
curl -sL "https://static.wixstatic.com/media/930f05_1da121d76a144f8495b7c9047cf22bf5~mv2.png" -o "$DIR/advisorinsights/shipping-lane.png"
curl -sL "https://static.wixstatic.com/media/930f05_16cde477d5ef489b97a7ab67ca686547~mv2.jpg" -o "$DIR/advisorinsights/insight-2.jpg"
curl -sL "https://static.wixstatic.com/media/930f05_9beb220975d8458491a04036418be7af~mv2.jpg" -o "$DIR/advisorinsights/insight-3.jpg"

echo "Images done"
