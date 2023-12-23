using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NTracker.Startup))]
namespace NTracker
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
