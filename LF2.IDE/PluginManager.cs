using CSScriptLibrary;
using System;
using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LF2.IDE
{
	public class Plugger<T> where T : class
	{
		private ConcurrentDictionary<string, T> plugs = new ConcurrentDictionary<string, T>();

		public T this[string key] {
			get
			{
				if (plugs.ContainsKey(key))
					return plugs[key];
				else
					throw new ArgumentException("Plugin could not be found", key);
			}
		}

		public ICollection<string> PluginKeys { get { return plugs.Keys; } }

		public ICollection<T> Plugins { get { return plugs.Values; } }

		public void PlugOn(string directory, string filter = "*.cs", SearchOption searchOption = SearchOption.AllDirectories)
		{
			Parallel.ForEach<string>(Directory.GetFiles(directory, filter, searchOption), file => PlugIn(file));
		}

		public void PlugIn(string file)
		{
			Assembly asm = CSScript.Load(file);
			Type pt = typeof(T);
			foreach(Type type in asm.GetTypes())
				if (!type.IsAssignableFrom(pt) && type != pt)
					plugs[type.Name] = Activator.CreateInstance(type) as T;
		}
	}

	public abstract class Plugin
	{
		public virtual string Name { get { return null; } }
		public virtual string Author { get { return null; } }
		public virtual string IdeVersion { get { return null; } }
		public virtual string Description { get { return null; } }
		public virtual string Warning { get { return null; } }
		public virtual string Web { get { return null; } }

		protected MainForm MainForm { get { return Program.MainForm; } }

		public abstract void Register();
		public virtual void Unregister() { }
		public virtual void OnExit(CloseReason closeReason) { }
	}
}