//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Asp_Gluhhov
{
    using System;
    using System.Collections.Generic;
    
    public partial class Opilane
    {
        public int opilaneid { get; set; }
        public string nimi { get; set; }
        public string perekonnanimi { get; set; }
        public System.DateTime synniaeg { get; set; }
        public Nullable<decimal> keskhinne { get; set; }
    
        public virtual Ryhm Ryhm { get; set; }
    }
}